# BC Facility Physical Address Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Facility Physical Address Extension**

## Extension: BC Facility Physical Address Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:PhysicalAddress |

An optional physical address for the facility.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCLocation](StructureDefinition-bc-location.md)
* Examples for this Extension: [Bundle/Example-AddLocation-Bundle](Bundle-Example-AddLocation-Bundle.md), [Bundle/Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md), [Bundle/Example-AddLocationWithLinks-Bundle](Bundle-Example-AddLocationWithLinks-Bundle.md), [Bundle/Example-UpdateLocationWithLinks-Bundle](Bundle-Example-UpdateLocationWithLinks-Bundle.md)... Show 6 more, [General Hospital](Location-Example-Location-For-Add.md), [General Hospital](Location-IFC.00147422.BC.PRS.md), [General Hospital](Location-IFC.00147423.BC.PRS.md), [Parameters/Example-Request-Add-Location](Parameters-Example-Request-Add-Location.md), [Parameters/Example-Request-Update-Location](Parameters-Example-Request-Update-Location.md) and [Parameters/Example-Response-Add-Location](Parameters-Example-Response-Add-Location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-facility-physical-address-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-facility-physical-address-extension.csv), [Excel](StructureDefinition-bc-facility-physical-address-extension.xlsx), [Schematron](StructureDefinition-bc-facility-physical-address-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-facility-physical-address-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension",
  "version" : "1.0.0",
  "name" : "PhysicalAddress",
  "title" : "BC Facility Physical Address Extension",
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
  "description" : "An optional physical address for the facility.",
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
      "short" : "BC Facility Physical Address Extension",
      "definition" : "An optional physical address for the facility."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Physical address only, of the building Location, so no unit number",
      "definition" : "An address expressed using postal conventions (as opposed to GPS or other location definition formats). This data type is to used to convey addresses for visiting locations which might not be valid for mail delivery.",
      "min" : 1,
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
