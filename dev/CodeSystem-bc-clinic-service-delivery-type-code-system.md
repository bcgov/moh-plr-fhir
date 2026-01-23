# Bc Clinic Service Delivery Type Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Clinic Service Delivery Type Codes**

## CodeSystem: Bc Clinic Service Delivery Type Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-service-delivery-type-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:ClinicServiceDeliveryTypeCS |

 
Bc Clinic Service Delivery Type Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-clinic-service-delivery-type-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-service-delivery-type-code-system",
  "version" : "1.0.0",
  "name" : "ClinicServiceDeliveryTypeCS",
  "title" : "Bc Clinic Service Delivery Type Codes",
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
  "description" : "Bc Clinic Service Delivery Type Code System",
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
      "code" : "Mixed",
      "display" : "Mixed"
    },
    {
      "code" : "Longitudinal",
      "display" : "Longitudinal"
    },
    {
      "code" : "Episodic",
      "display" : "Episodic"
    }
  ]
}

```
