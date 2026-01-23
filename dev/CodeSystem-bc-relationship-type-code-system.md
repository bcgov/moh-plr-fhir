# Bc Relationship Type Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Relationship Type Codes**

## CodeSystem: Bc Relationship Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:RelationshipTypeCS |

 
Bc Relationship Type Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RelationshipTypeVS](ValueSet-bc-relationship-type-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-relationship-type-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system",
  "version" : "1.0.0",
  "name" : "RelationshipTypeCS",
  "title" : "Bc Relationship Type Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Bc Relationship Type Code System",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 17,
  "concept" : [
    {
      "code" : "MANAGEDBY",
      "display" : "Managed by the target"
    },
    {
      "code" : "MANAGES",
      "display" : "Manages the target"
    },
    {
      "code" : "WORKSAT",
      "display" : "Works at"
    },
    {
      "code" : "DIRECTED",
      "display" : "Directed by the target."
    },
    {
      "code" : "DIRECTS",
      "display" : "Directs the target, e.g. Medical Director."
    },
    {
      "code" : "OPERATED",
      "display" : "Operated by the target."
    },
    {
      "code" : "OPERATES",
      "display" : "Operates the target."
    },
    {
      "code" : "WORKLOCATION",
      "display" : "Work location"
    },
    {
      "code" : "SPONSOR",
      "display" : "Owner Provider"
    },
    {
      "code" : "PHSTF",
      "display" : "Staff Pharmacist"
    },
    {
      "code" : "PHMGR",
      "display" : "Pharmacy Manager"
    },
    {
      "code" : "PHCST",
      "display" : "Pharmacist"
    },
    {
      "code" : "PHARMACY",
      "display" : "Pharmacy"
    },
    {
      "code" : "OTHER",
      "display" : "Other"
    },
    {
      "code" : "LOC",
      "display" : "Locum"
    },
    {
      "code" : "EE",
      "display" : "Employee"
    },
    {
      "code" : "ER",
      "display" : "Employer"
    }
  ]
}

```
