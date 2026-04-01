# Extension to represent the available Time, or hours of operation, for clinic, or other Profiles - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension to represent the available Time, or hours of operation, for clinic, or other Profiles**

## Extension: Extension to represent the available Time, or hours of operation, for clinic, or other Profiles 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:AvailableTimeExtension |

Can represent the Available time

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Extension to represent Availability, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availability-extension.md)
* Examples for this Extension: [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-availableTime-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-availableTime-extension.csv), [Excel](StructureDefinition-bc-availableTime-extension.xlsx), [Schematron](StructureDefinition-bc-availableTime-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-availableTime-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension",
  "version" : "1.0.0",
  "name" : "AvailableTimeExtension",
  "title" : "Extension to represent the available Time, or hours of operation, for clinic, or other Profiles",
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
  "description" : "Can represent the Available time",
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
      "short" : "Extension to represent the available Time, or hours of operation, for clinic, or other Profiles",
      "definition" : "Can represent the Available time"
    },
    {
      "id" : "Extension.extension:daysOfWeek",
      "path" : "Extension.extension",
      "sliceName" : "daysOfWeek",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:daysOfWeek.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:daysOfWeek.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "daysOfWeek"
    },
    {
      "id" : "Extension.extension:daysOfWeek.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/days-of-week"
      }
    },
    {
      "id" : "Extension.extension:availableStartTime",
      "path" : "Extension.extension",
      "sliceName" : "availableStartTime",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:availableStartTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:availableStartTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "availableStartTime"
    },
    {
      "id" : "Extension.extension:availableStartTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "time"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:availableEndTime",
      "path" : "Extension.extension",
      "sliceName" : "availableEndTime",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:availableEndTime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:availableEndTime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "availableEndTime"
    },
    {
      "id" : "Extension.extension:availableEndTime.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "time"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:allDay",
      "path" : "Extension.extension",
      "sliceName" : "allDay",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:allDay.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:allDay.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "allDay"
    },
    {
      "id" : "Extension.extension:allDay.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
