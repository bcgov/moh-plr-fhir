# Bc Communication Purpose Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Communication Purpose Codes**

## CodeSystem: Bc Communication Purpose Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:CommunicationPurposeCS |

 
Bc Communication Purpose Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CommunicationPurposeVS](ValueSet-bc-communication-purpose-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-communication-purpose-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
  "version" : "1.0.0",
  "name" : "CommunicationPurposeCS",
  "title" : "Bc Communication Purpose Codes",
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
  "description" : "Bc Communication Purpose Code System",
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
  "count" : 8,
  "concept" : [
    {
      "code" : "FC",
      "display" : "Facility Contact"
    },
    {
      "code" : "EC",
      "display" : "Emergency Contact"
    },
    {
      "code" : "HC",
      "display" : "Home Contact"
    },
    {
      "code" : "MC",
      "display" : "Ministry Contact"
    },
    {
      "code" : "OC",
      "display" : "Other Contact"
    },
    {
      "code" : "CC",
      "display" : "College Contact"
    },
    {
      "code" : "BC",
      "display" : "Business Contact"
    },
    {
      "code" : "DC",
      "display" : "Doctor's Contact"
    }
  ]
}

```
