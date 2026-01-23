# Bc End Reason Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc End Reason Codes**

## CodeSystem: Bc End Reason Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:EndReasonCS |

 
Bc End Reason Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EndReasonVS](ValueSet-bc-end-reason-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-end-reason-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
  "version" : "1.0.0",
  "name" : "EndReasonCS",
  "title" : "Bc End Reason Codes",
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
  "description" : "Bc End Reason Code System",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "CEASE",
      "display" : "Cease"
    },
    {
      "code" : "CORR",
      "display" : "Correct"
    },
    {
      "code" : "CHG",
      "display" : "Change"
    }
  ]
}

```
