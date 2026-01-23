# Bc License Status Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc License Status Codes**

## CodeSystem: Bc License Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:LicenseStatusCS |

 
Bc License Status Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LicenseStatusVS](ValueSet-bc-license-status-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-license-status-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system",
  "version" : "1.0.0",
  "name" : "LicenseStatusCS",
  "title" : "Bc License Status Codes",
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
  "description" : "Bc License Status Code System",
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
      "code" : "INACTIVE",
      "display" : "Inactive"
    },
    {
      "code" : "UNKNOWN",
      "display" : "Unknown"
    },
    {
      "code" : "NULLIFIED",
      "display" : "Nullified"
    },
    {
      "code" : "PENDING",
      "display" : "Pending"
    },
    {
      "code" : "SUSPENDED",
      "display" : "Suspended"
    },
    {
      "code" : "TERMINATED",
      "display" : "Terminated"
    },
    {
      "code" : "ACTIVE",
      "display" : "Active"
    },
    {
      "code" : "CANCELLED",
      "display" : "Cancelled"
    }
  ]
}

```
