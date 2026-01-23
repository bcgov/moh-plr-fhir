# BC Practitioner to Organization or Practitioner to Practitioner Type Extension. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Practitioner to Organization or Practitioner to Practitioner Type Extension.**

## Extension: BC Practitioner to Organization or Practitioner to Practitioner Type Extension. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:RelationshipTypeExtension |

The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)
* Examples for this Extension: [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md), [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md)... Show 29 more, [Bundle/Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-PractitionerRole-byPractitioner-Response](Bundle-Example-GET-PractitionerRole-byPractitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md), [Bundle/Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdateOrganization-Bundle](Bundle-Example-UpdateOrganization-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md), [Parameters/Example-Request-Distribution-Organization](Parameters-Example-Request-Distribution-Organization.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-Organization](Parameters-Example-Request-Update-Organization.md), [Parameters/Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [PractitionerRole/RELN.123.PRS](PractitionerRole-RELN.123.PRS.md), [PractitionerRole/RELN.12373.PRS](PractitionerRole-RELN.12373.PRS.md), [PractitionerRole/RELN.124.PRS](PractitionerRole-RELN.124.PRS.md), [PractitionerRole/RELN.127.PRS](PractitionerRole-RELN.127.PRS.md), [PractitionerRole/RELN.128.PRS](PractitionerRole-RELN.128.PRS.md), [PractitionerRole/RELN.129.PRS](PractitionerRole-RELN.129.PRS.md), [PractitionerRole/RELN.130.PRS](PractitionerRole-RELN.130.PRS.md), [PractitionerRole/RELN.153.PRS](PractitionerRole-RELN.153.PRS.md), [PractitionerRole/RELN.173.PRS](PractitionerRole-RELN.173.PRS.md), [PractitionerRole/RELN.193.PRS](PractitionerRole-RELN.193.PRS.md) and [PractitionerRole/RELN.23.PRS](PractitionerRole-RELN.23.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-relationship-type-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-relationship-type-extension.csv), [Excel](StructureDefinition-bc-relationship-type-extension.xlsx), [Schematron](StructureDefinition-bc-relationship-type-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-relationship-type-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension",
  "version" : "1.0.0",
  "name" : "RelationshipTypeExtension",
  "title" : "BC Practitioner to Organization or Practitioner to Practitioner Type Extension.",
  "status" : "active",
  "date" : "2026-01-23T00:06:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [
    {
      "name" : "BC Ministry of Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
        }
      ]
    }
  ],
  "description" : "The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA",
          "display" : "Canada"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "PractitionerRole"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BC Practitioner to Organization or Practitioner to Practitioner Type Extension.",
        "definition" : "The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
