# BC Facility Local Health Area Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Facility Local Health Area Extension**

## Extension: BC Facility Local Health Area Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-local-health-area-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LocalHealthAreaExtension |

A code that represents the Local Health Area (LHA) that the location is a part of.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BC Facility Health Service Area Extension](StructureDefinition-bc-facility-health-service-area-extension.md)
* Examples for this Extension: [Bundle/Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md), [Bundle/Example-GET-Location-Response](Bundle-Example-GET-Location-Response.md), [General Hospital](Location-IFC.00047422.BC.PRS.md), [General Hospital](Location-IFC.00147423.BC.PRS.md) and [Parameters/Example-Response-Add-Location](Parameters-Example-Response-Add-Location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-facility-local-health-area-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-facility-local-health-area-extension.csv), [Excel](StructureDefinition-bc-facility-local-health-area-extension.xlsx), [Schematron](StructureDefinition-bc-facility-local-health-area-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-facility-local-health-area-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-local-health-area-extension",
  "version" : "1.0.0",
  "name" : "LocalHealthAreaExtension",
  "title" : "BC Facility Local Health Area Extension",
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
  "description" : "A code that represents the Local Health Area (LHA) that the location is a part of.",
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
      "short" : "BC Facility Local Health Area Extension",
      "definition" : "A code that represents the Local Health Area (LHA) that the location is a part of."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-local-health-area-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    }]
  }
}

```
