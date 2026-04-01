# BC Health Delivery Site Type Value Set - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Health Delivery Site Type Value Set**

## ValueSet: BC Health Delivery Site Type Value Set 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-hds-type-value-set | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:HealthDeliverySiteTypeVS |

 
BC Health Delivery Site Type Value set. 

 **References** 

* [BC Health Delivery Site Type Extension](StructureDefinition-bc-health-delivery-site-type-extension.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "bc-hds-type-value-set",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-hds-type-value-set",
  "version" : "1.0.0",
  "name" : "HealthDeliverySiteTypeVS",
  "title" : "BC Health Delivery Site Type Value Set",
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
  "description" : "BC Health Delivery Site Type Value set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-hds-type-code-system"
    }]
  }
}

```
