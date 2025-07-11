import requests
import re

# URL to fetch all CodeSystems (FHIR Bundle)
url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem"  # <-- Replace with your actual URL
fsh_path = "input/fsh/CodeSystems.fsh"

response = requests.get(url)
if response.status_code != 200:
    print(f"Failed to fetch CodeSystems: {response.status_code}")
    exit(1)

bundle = response.json()

# Build a lookup of CodeSystems from the bundle by canonical URL and by id
cs_by_url = {}
cs_by_id = {}
for entry in bundle.get("entry", []):
    cs = entry.get("resource", {})
    if cs.get("url"):
        cs_by_url[cs["url"]] = cs
    if cs.get("id"):
        cs_by_id[cs["id"]] = cs

def extract_url_from_block(block):
    match = re.search(r'\* \^url = "([^"]+)"', block)
    return match.group(1) if match else None

def extract_id_from_block(block):
    match = re.search(r'Id: ([^\s]+)', block)
    return match.group(1) if match else None

def remove_existing_codes(block):
    # Remove all lines starting with * # (code lines)
    return re.sub(r'(^|\n)[ ]*\* #.*?(?=\n|$)', '', block, flags=re.MULTILINE)

def is_valid_code(code):
    # FHIR code regex: [^\s]+ (no whitespace, printable, no control chars)
    # We'll use a conservative regex: only allow A-Z, a-z, 0-9, -, _, and not empty, and NO dot
    return bool(re.match(r'^[A-Za-z0-9\-_]+$', code))

def generate_concept_lines(concepts, indent=""):
    lines = []
    valid_count = 0
    for concept in concepts:
        code = concept.get("code", "")
        display = concept.get("display", "")
        if is_valid_code(code):
            lines.append(f'{indent}* #{code} "{display}"')
            valid_count += 1
        if "concept" in concept:
            sublines, subcount = generate_concept_lines(concept["concept"], indent + "  ")
            lines.extend(sublines)
            valid_count += subcount
    return lines, valid_count

# Read the FSH file
with open(fsh_path, encoding="utf-8") as f:
    fsh_content = f.read()

# Split into CodeSystem blocks
blocks = re.split(r'(?=^CodeSystem: )', fsh_content, flags=re.MULTILINE)
new_blocks = []

for block in blocks:
    if not block.strip():
        continue
    url = extract_url_from_block(block)
    cs_id = extract_id_from_block(block)
    cs = None
    if url and url in cs_by_url:
        cs = cs_by_url[url]
    elif cs_id and cs_id in cs_by_id:
        cs = cs_by_id[cs_id]
    code_lines = []
    valid_count = 0
    total_count = 0
    if cs and "concept" in cs:
        # Remove existing codes
        block_wo_codes = remove_existing_codes(block)
        # Find where to insert codes (after last metadata line)
        lines = block_wo_codes.strip().split('\n')
        # Insert after the last line starting with * or Id/Title/Description
        insert_idx = 0
        for i, line in enumerate(lines):
            if line.startswith('*') or any(line.startswith(x) for x in ["Id:", "Title:", "Description:"]):
                insert_idx = i
        # Generate new code lines
        code_lines, valid_count = generate_concept_lines(cs["concept"])
        # Count total concepts (including invalid)
        def count_all_concepts(concepts):
            count = 0
            for concept in concepts:
                if "code" in concept:
                    count += 1
                if "concept" in concept:
                    count += count_all_concepts(concept["concept"])
            return count
        total_count = count_all_concepts(cs["concept"])
        # Update ^content value
        content_line_idx = next((i for i, l in enumerate(lines) if l.strip().startswith('* ^content =')), None)
        if content_line_idx is not None:
            if valid_count == 0:
                lines[content_line_idx] = '* ^content = #not-present'
            elif valid_count == total_count:
                lines[content_line_idx] = '* ^content = #complete'
            else:
                lines[content_line_idx] = '* ^content = #fragment'
        # Insert code lines after insert_idx
        lines = lines[:insert_idx+1] + code_lines + lines[insert_idx+1:]
        new_block = '\n'.join(lines)
        new_blocks.append(new_block)
    else:
        # No codes found, set content to not-present
        lines = block.strip().split('\n')
        content_line_idx = next((i for i, l in enumerate(lines) if l.strip().startswith('* ^content =')), None)
        if content_line_idx is not None:
            lines[content_line_idx] = '* ^content = #not-present'
        new_blocks.append('\n'.join(lines))

# Write back the updated FSH file
with open(fsh_path, "w", encoding="utf-8") as f:
    f.write('\n\n'.join(new_blocks) + '\n')

print("CodeSystems.fsh updated: codes replaced and ^content set appropriately.")
