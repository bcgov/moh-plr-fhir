# Bc Organization Role Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Organization Role Codes**

## CodeSystem: Bc Organization Role Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-organization-role-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:OrganizationRoleCS |

 
Bc Organization Role Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrganizationRoleVS](ValueSet-bc-organization-role-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-organization-role-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-organization-role-code-system",
  "version" : "1.0.0",
  "name" : "OrganizationRoleCS",
  "title" : "Bc Organization Role Codes",
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
  "description" : "Bc Organization Role Code System",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "HDS",
      "display" : "Healthcare Delivery Site"
    },
    {
      "code" : "BUSINESS",
      "display" : "Corporation"
    },
    {
      "code" : "CLINIC",
      "display" : "Clinic"
    },
    {
      "code" : "ORG",
      "display" : "Organization"
    }
  ]
}

```
