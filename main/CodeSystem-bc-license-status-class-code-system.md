# Bc License Status Class Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc License Status Class Codes**

## CodeSystem: Bc License Status Class Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LicenseStatusClassCS |

 
Bc License Status Class Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LicenseStatusClassVS](ValueSet-bc-license-status-class-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-license-status-class-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system",
  "version" : "1.0.0",
  "name" : "LicenseStatusClassCS",
  "title" : "Bc License Status Class Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Bc License Status Class Code System",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "LIC",
    "display" : "Licensure"
  },
  {
    "code" : "AE",
    "display" : "Assigned Entity"
  }]
}

```
