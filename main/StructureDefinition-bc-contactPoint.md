# BCContactPoint - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCContactPoint**

## Data Type Profile: BCContactPoint 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-contactPoint | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:BCContactPoint |

 
Adds an end reason and extra contact information. 

**Usages:**

* Use this DataType Profile: [BCLocation](StructureDefinition-bc-location.md), [BCOrganization](StructureDefinition-bc-organization.md), [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md), [BCPractitioner](StructureDefinition-bc-practitioner.md) and [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-contactPoint)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-contactPoint.csv), [Excel](StructureDefinition-bc-contactPoint.xlsx), [Schematron](StructureDefinition-bc-contactPoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-contactPoint",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-contactPoint",
  "version" : "1.0.0",
  "name" : "BCContactPoint",
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
  "description" : "Adds an end reason and extra contact information.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ContactPoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint.extension:endReason",
      "path" : "ContactPoint.extension",
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
      "id" : "ContactPoint.extension:owner",
      "path" : "ContactPoint.extension",
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
      "id" : "ContactPoint.extension:commPurposeExtension",
      "path" : "ContactPoint.extension",
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
      "id" : "ContactPoint.use",
      "path" : "ContactPoint.use",
      "max" : "0"
    }]
  }
}

```
