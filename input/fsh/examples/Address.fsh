Instance: Example-Address-Valid
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
* type = #postal
* line[0] = "1000 DOUGLAS ST"
* city = "Kelowna"
* postalCode = "V6P7B8"
* state = "BC"
* country = "CA"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #BC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[=].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"

Instance: Example-Address-Invalid
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
* type = #postal
* line[0] = "1001000 DOUGLAS ST"
* city = "VICTORIA"
* postalCode = "Z6P7U8"
* state = "BC"
* country = "CA"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #BC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[=].valueCodeableConcept.coding.code = #I
* period.start = "2000-01-01"

Instance: Example-Address-Update
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
* type = #postal
* line[0] = "1000 DOUGLAS ST"
* city = "VICTORIA"
* postalCode = "V6P7B8"
* state = "BC"
* country = "CA"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #BC
* extension[+] = Example-ERC-Change
* period.start = "2000-01-01"

Instance: Example-Address-Valid-Response
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
* type = #postal
* line[0] = "19 ST"
* line[1] = "ADDRESS ADDRESSLINE2TXT"
* line[2] = "ADDRESS ADDRESSLINE3TXT"
* city = "VICTORIA"
* postalCode = "V6P7B8"
* state = "BC"
* country = "CA"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #BC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[=].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"
* extension[+] = Example-OC-PHSA
