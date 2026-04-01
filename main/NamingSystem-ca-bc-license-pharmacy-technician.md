# Ca Bc License Pharmacy Technician Naming System - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ca Bc License Pharmacy Technician Naming System**

## NamingSystem: Ca Bc License Pharmacy Technician Naming System 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/NamingSystem/ca-bc-license-pharmacy-technician | *Version*:1.0.0 |
| Active as of 2025-07-14 | *Computable Name*:CaBcLicensePharmacyTechnician |

 
Pharmacy Technician ID Number 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "ca-bc-license-pharmacy-technician",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://hlth.gov.bc.ca/fhir/provider/NamingSystem/ca-bc-license-pharmacy-technician"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "1.0.0"
  }],
  "name" : "CaBcLicensePharmacyTechnician",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2025-07-14",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
      "code" : "PRN",
      "display" : "Provider"
    }]
  },
  "description" : "Pharmacy Technician ID Number",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-license-pharmacy-technician",
    "preferred" : true
  },
  {
    "type" : "oid",
    "value" : "2.16.840.1.113883.4.401"
  }]
}

```
