# BC Practitioner to Location Type Extension. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Practitioner to Location Type Extension.**

## Extension: BC Practitioner to Location Type Extension. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LocationRelationshipTypeExtension |

The relationship type of a Practitioner to Location relationship.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)
* Examples for this Extension: [Bundle/Example-AddLocationWithLinks-Bundle](Bundle-Example-AddLocationWithLinks-Bundle.md), [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md)... Show 20 more, [Bundle/Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-PractitionerRole-Response](Bundle-Example-GET-PractitionerRole-Response.md), [Bundle/Example-GET-PractitionerRole-byPractitioner-Response](Bundle-Example-GET-PractitionerRole-byPractitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdateLocationWithLinks-Bundle](Bundle-Example-UpdateLocationWithLinks-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Parameters/Example-Request-Add-Location](Parameters-Example-Request-Add-Location.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-Location](Parameters-Example-Request-Update-Location.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [PractitionerRole/Example-PractitionerRole-Loc3](PractitionerRole-Example-PractitionerRole-Loc3.md), [PractitionerRole/RELN.1125.PRS](PractitionerRole-RELN.1125.PRS.md), [PractitionerRole/RELN.125.PRS](PractitionerRole-RELN.125.PRS.md), [PractitionerRole/RELN.126.PRS](PractitionerRole-RELN.126.PRS.md), [PractitionerRole/RELN.175.PRS](PractitionerRole-RELN.175.PRS.md) and [PractitionerRole/RELN.24.PRS](PractitionerRole-RELN.24.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-location-relationship-type-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-location-relationship-type-extension.csv), [Excel](StructureDefinition-bc-location-relationship-type-extension.xlsx), [Schematron](StructureDefinition-bc-location-relationship-type-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-location-relationship-type-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension",
  "version" : "1.0.0",
  "name" : "LocationRelationshipTypeExtension",
  "title" : "BC Practitioner to Location Type Extension.",
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
  "description" : "The relationship type of a Practitioner to Location relationship.",
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
    "expression" : "PractitionerRole"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Practitioner to Location Type Extension.",
      "definition" : "The relationship type of a Practitioner to Location relationship."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    }]
  }
}

```
