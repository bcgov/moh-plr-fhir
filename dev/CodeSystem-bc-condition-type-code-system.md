# Bc Condition Type Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Condition Type Codes**

## CodeSystem: Bc Condition Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:ConditionTypeCS |

 
Bc Condition Type Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-condition-type-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system",
  "version" : "1.0.0",
  "name" : "ConditionTypeCS",
  "title" : "Bc Condition Type Codes",
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
  "description" : "Bc Condition Type Code System",
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
  "content" : "fragment",
  "concept" : [
    {
      "code" : "ASSC",
      "display" : "Associate"
    },
    {
      "code" : "ADMIN",
      "display" : "Adminstrative"
    },
    {
      "code" : "EDUD",
      "display" : "Education"
    },
    {
      "code" : "ENH",
      "display" : "Enhanced Scope of Practice"
    },
    {
      "code" : "EXP",
      "display" : "Expertise"
    },
    {
      "code" : "FULLRESTRICT",
      "display" : "Full license with Restrictions"
    },
    {
      "code" : "GPH",
      "display" : "Graduate Permit Holder"
    },
    {
      "code" : "HONOR",
      "display" : "Honorary"
    },
    {
      "code" : "LMCC",
      "display" : "Lic. of Med.Council of Canada"
    },
    {
      "code" : "LOC",
      "display" : "Location"
    },
    {
      "code" : "MCCEE",
      "display" : "Med. Counc. Canada Eval. Exam"
    },
    {
      "code" : "NON-RX",
      "display" : "Non-Prescribing"
    },
    {
      "code" : "OTH",
      "display" : "Other Conditions"
    },
    {
      "code" : "AF",
      "display" : "Armed Forces"
    },
    {
      "code" : "PCYTYPE",
      "display" : "Pharmacy Type"
    },
    {
      "code" : "PRAC",
      "display" : "Practice Restriction"
    },
    {
      "code" : "REGISTRY",
      "display" : "Registry"
    },
    {
      "code" : "SPECMED",
      "display" : "Special Medical"
    },
    {
      "code" : "SPECREG",
      "display" : "Special Register"
    },
    {
      "code" : "STANDARD",
      "display" : "Standard"
    },
    {
      "code" : "TIME",
      "display" : "Time limitation"
    },
    {
      "code" : "ACAD",
      "display" : "Academic"
    },
    {
      "code" : "COURREG",
      "display" : "Courtesy Register"
    }
  ]
}

```
