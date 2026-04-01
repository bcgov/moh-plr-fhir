# Bc Location Identifier Type Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Location Identifier Type Codes**

## CodeSystem: Bc Location Identifier Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-identifier-type-code-system | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LocationIdentifierTypeCS |

 
Bc Location Identifier Type Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationIdentifierTypeVS](ValueSet-bc-location-identifier-type-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-location-identifier-type-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-identifier-type-code-system",
  "version" : "1.0.0",
  "name" : "LocationIdentifierTypeCS",
  "title" : "Bc Location Identifier Type Codes",
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
  "description" : "Bc Location Identifier Type Code System",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "IFC",
    "display" : "Internal Facility Code"
  }]
}

```
