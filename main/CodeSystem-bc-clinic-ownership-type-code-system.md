# Bc Clinic Ownership Type Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Clinic Ownership Type Codes**

## CodeSystem: Bc Clinic Ownership Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-ownership-type-code-system | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:ClinicOwnershipTypeCS |

 
Bc Clinic Ownership Type Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-clinic-ownership-type-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-ownership-type-code-system",
  "version" : "1.0.0",
  "name" : "ClinicOwnershipTypeCS",
  "title" : "Bc Clinic Ownership Type Codes",
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
  "description" : "Bc Clinic Ownership Type Code System",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "Other",
    "display" : "Other"
  }]
}

```
