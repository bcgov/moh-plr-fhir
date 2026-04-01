# BC Practitioner Date of Death Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Practitioner Date of Death Extension**

## Extension: BC Practitioner Date of Death Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-deathdate-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:DeathDateExtension |

The Date of Death of a Practitioner.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCPractitioner](StructureDefinition-bc-practitioner.md)
* Examples for this Extension: [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md), [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md), [Parameters/Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md) and [Practitioner/Example-AddPractitioner-Practitioner](Practitioner-Example-AddPractitioner-Practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-practitioner-deathdate-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-practitioner-deathdate-extension.csv), [Excel](StructureDefinition-bc-practitioner-deathdate-extension.xlsx), [Schematron](StructureDefinition-bc-practitioner-deathdate-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-practitioner-deathdate-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-deathdate-extension",
  "version" : "1.0.0",
  "name" : "DeathDateExtension",
  "title" : "BC Practitioner Date of Death Extension",
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
  "description" : "The Date of Death of a Practitioner.",
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
    "expression" : "Practitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Practitioner Date of Death Extension",
      "definition" : "The Date of Death of a Practitioner."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-deathdate-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    }]
  }
}

```
