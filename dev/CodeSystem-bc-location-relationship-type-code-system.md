# Bc Location Relationship Type Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Location Relationship Type Codes**

## CodeSystem: Bc Location Relationship Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:LocationRelationshipTypeCS |

 
Bc Location Relationship Type Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationRelationshipTypeVS](ValueSet-bc-location-relationship-type-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-location-relationship-type-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system",
  "version" : "1.0.0",
  "name" : "LocationRelationshipTypeCS",
  "title" : "Bc Location Relationship Type Codes",
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
  "description" : "Bc Location Relationship Type Code System",
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
  "count" : 2,
  "concept" : [
    {
      "code" : "LOCATION",
      "display" : "Location of"
    },
    {
      "code" : "LOCATED",
      "display" : "Located at"
    }
  ]
}

```
