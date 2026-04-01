# BC Practitioner Conditions Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Practitioner Conditions Extension**

## Extension: BC Practitioner Conditions Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:PractitionerConditionExtension |

Conditions on the provider's role

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCPractitioner](StructureDefinition-bc-practitioner.md)
* Examples for this Extension: [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md)... Show 20 more, [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-Practitioner-Param-Response](Bundle-Example-GET-Practitioner-Param-Response.md), [Bundle/Example-GET-Practitioner-Response](Bundle-Example-GET-Practitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md), [Parameters/Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [Practitioner/Example-AddPractitioner-Practitioner](Practitioner-Example-AddPractitioner-Practitioner.md), [Practitioner/IPC.00047422.BC.PRS](Practitioner-IPC.00047422.BC.PRS.md), [Practitioner/IPC.00147422.BC.PRS](Practitioner-IPC.00147422.BC.PRS.md), [Practitioner/IPC.00147433.BC.PRS](Practitioner-IPC.00147433.BC.PRS.md), [Practitioner/IPC.00147622.BC.PRS](Practitioner-IPC.00147622.BC.PRS.md) and [Practitioner/IPC.00187833.BC.PRS](Practitioner-IPC.00187833.BC.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-practitioner-condition-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-practitioner-condition-extension.csv), [Excel](StructureDefinition-bc-practitioner-condition-extension.xlsx), [Schematron](StructureDefinition-bc-practitioner-condition-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-practitioner-condition-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension",
  "version" : "1.0.0",
  "name" : "PractitionerConditionExtension",
  "title" : "BC Practitioner Conditions Extension",
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
  "description" : "Conditions on the provider's role",
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
      "short" : "BC Practitioner Conditions Extension",
      "definition" : "Conditions on the provider's role"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 3
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
      "type" : [{
        "code" : "Identifier"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:restriction",
      "path" : "Extension.extension",
      "sliceName" : "restriction",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:restriction.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:restriction.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "restriction"
    },
    {
      "id" : "Extension.extension:restriction.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:restrictionText",
      "path" : "Extension.extension",
      "sliceName" : "restrictionText",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:restrictionText.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:restrictionText.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "restrictionText"
    },
    {
      "id" : "Extension.extension:restrictionText.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:code",
      "path" : "Extension.extension",
      "sliceName" : "code",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:code.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:code.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:code.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
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
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
