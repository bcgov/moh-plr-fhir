# BC Facility Health Service Area Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Facility Health Service Area Extension**

## Extension: BC Facility Health Service Area Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:HealthServiceArea |

A wrapper extension that will allow to list all the health service area, including the PCN and the Community Health Service Area.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCLocation](StructureDefinition-bc-location.md)
* Examples for this Extension: [Bundle/Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md), [Bundle/Example-GET-Location-Response](Bundle-Example-GET-Location-Response.md), [General Hospital](Location-IFC.00047422.BC.PRS.md), [General Hospital](Location-IFC.00147423.BC.PRS.md) and [Parameters/Example-Response-Add-Location](Parameters-Example-Response-Add-Location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-facility-health-service-area-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-facility-health-service-area-extension.csv), [Excel](StructureDefinition-bc-facility-health-service-area-extension.xlsx), [Schematron](StructureDefinition-bc-facility-health-service-area-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-facility-health-service-area-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension",
  "version" : "1.0.0",
  "name" : "HealthServiceArea",
  "title" : "BC Facility Health Service Area Extension",
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
  "description" : "A wrapper extension that will allow to list all the health service area, including the PCN and the Community Health Service Area.",
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
    "expression" : "Location"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Facility Health Service Area Extension",
      "definition" : "A wrapper extension that will allow to list all the health service area, including the PCN and the Community Health Service Area."
    },
    {
      "id" : "Extension.extension:HA",
      "path" : "Extension.extension",
      "sliceName" : "HA",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-authority-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:HSDA",
      "path" : "Extension.extension",
      "sliceName" : "HSDA",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-delivery-area-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:LHA",
      "path" : "Extension.extension",
      "sliceName" : "LHA",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-local-health-area-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:CHSA",
      "path" : "Extension.extension",
      "sliceName" : "CHSA",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-community-health-area-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:PCN",
      "path" : "Extension.extension",
      "sliceName" : "PCN",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-primary-care-network-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
