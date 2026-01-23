# Ca Bc Office Assistant Naming System - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ca Bc Office Assistant Naming System**

## NamingSystem: Ca Bc Office Assistant Naming System 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/NamingSystem/ca-bc-office-assistant | *Version*:1.0.0 |
| Active as of 2025-07-14 | *Computable Name*:CaBcOfficeAssistant |

 
Medical Office Assistant ID 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ca-bc-office-assistant",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hlth.gov.bc.ca/fhir/provider/NamingSystem/ca-bc-office-assistant"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.0.0"
    }
  ],
  "name" : "CaBcOfficeAssistant",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2025-07-14",
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
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN",
        "display" : "Provider"
      }
    ]
  },
  "description" : "Medical Office Assistant ID",
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
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-office-assistant",
      "preferred" : true
    }
  ]
}

```
