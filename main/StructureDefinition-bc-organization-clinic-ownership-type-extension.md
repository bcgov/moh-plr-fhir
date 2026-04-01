# Extension to represent the Clinic Ownership type. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension to represent the Clinic Ownership type.**

## Extension: Extension to represent the Clinic Ownership type. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:ClinicOwnershipTypeExtension |

The (Primary Care) Clinic Ownership type, the expected value is one from Health Authority Owned/Operated, First Nation Health Authority Owned/Operated, Physician Owned/Operated, Non-Profit Society, Non-Physician Corporation, Other

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Extension for BC Organization to add Primary Care Clinic details](StructureDefinition-bc-organization-primary-care-clinic-extension.md)
* Examples for this Extension: [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-organization-clinic-ownership-type-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-organization-clinic-ownership-type-extension.csv), [Excel](StructureDefinition-bc-organization-clinic-ownership-type-extension.xlsx), [Schematron](StructureDefinition-bc-organization-clinic-ownership-type-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-organization-clinic-ownership-type-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension",
  "version" : "1.0.0",
  "name" : "ClinicOwnershipTypeExtension",
  "title" : "Extension to represent the Clinic Ownership type.",
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
  "description" : "The (Primary Care) Clinic Ownership type, the expected value is one from Health Authority Owned/Operated, First Nation Health Authority Owned/Operated, Physician Owned/Operated, Non-Profit Society, Non-Physician Corporation, Other",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension to represent the Clinic Ownership type.",
      "definition" : "The (Primary Care) Clinic Ownership type, the expected value is one from Health Authority Owned/Operated, First Nation Health Authority Owned/Operated, Physician Owned/Operated, Non-Profit Society, Non-Physician Corporation, Other"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:ownershipType",
      "path" : "Extension.extension",
      "sliceName" : "ownershipType",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ownershipType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ownershipType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ownershipType"
    },
    {
      "id" : "Extension.extension:ownershipType.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:identifier",
      "path" : "Extension.extension",
      "sliceName" : "identifier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:identifier.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:identifier.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "identifier"
    },
    {
      "id" : "Extension.extension:identifier.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:endReason",
      "path" : "Extension.extension",
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
      "id" : "Extension.extension:owner",
      "path" : "Extension.extension",
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
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
