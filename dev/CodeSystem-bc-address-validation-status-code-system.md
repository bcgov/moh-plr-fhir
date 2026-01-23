# Bc Address Validation Status Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Address Validation Status Codes**

## CodeSystem: Bc Address Validation Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-address-validation-status-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:AddressValidationStatusCS |

 
Bc Address Validation Status Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AddressValidationStatusVS](ValueSet-bc-address-validation-status-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-address-validation-status-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-address-validation-status-code-system",
  "version" : "1.0.0",
  "name" : "AddressValidationStatusCS",
  "title" : "Bc Address Validation Status Codes",
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
  "description" : "Bc Address Validation Status Code System",
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
  "count" : 5,
  "concept" : [
    {
      "code" : "F",
      "display" : "First load"
    },
    {
      "code" : "N",
      "display" : "N/A"
    },
    {
      "code" : "I",
      "display" : "Invalid"
    },
    {
      "code" : "U",
      "display" : "Unknown"
    },
    {
      "code" : "V",
      "display" : "Valid"
    }
  ]
}

```
