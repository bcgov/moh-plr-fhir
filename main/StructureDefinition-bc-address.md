# BCAddress - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCAddress**

## Data Type Profile: BCAddress 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:BCAddress |

 
Adds an end reason, communication purpose and validation status to the address. 

**Usages:**

* Use this DataType Profile: [BC Facility Physical Address Extension](StructureDefinition-bc-facility-physical-address-extension.md), [BCLocation](StructureDefinition-bc-location.md), [BCOrganization](StructureDefinition-bc-organization.md) and [BCPractitioner](StructureDefinition-bc-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-address)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-address.csv), [Excel](StructureDefinition-bc-address.xlsx), [Schematron](StructureDefinition-bc-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-address",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address",
  "version" : "1.0.0",
  "name" : "BCAddress",
  "status" : "active",
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Adds an end reason, communication purpose and validation status to the address.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    },
    {
      "id" : "Address.extension:endReason",
      "path" : "Address.extension",
      "sliceName" : "endReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:owner",
      "path" : "Address.extension",
      "sliceName" : "owner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:commPurposeExtension",
      "path" : "Address.extension",
      "sliceName" : "commPurposeExtension",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.extension:validationStatus",
      "path" : "Address.extension",
      "sliceName" : "validationStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Address.use",
      "path" : "Address.use",
      "max" : "0"
    }]
  }
}

```
