# BC Specialty Source Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Specialty Source Extension**

## Extension: BC Specialty Source Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:SpecialtySourceExtension |

The specialty source.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md)
* Examples for this Extension: [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md)... Show 20 more, [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-PractitionerRole-byPractitioner-Response](Bundle-Example-GET-PractitionerRole-byPractitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md), [Parameters/Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [PractitionerRole/Example-PractitionerRole-Role-FromPrac-CPSID](PractitionerRole-Example-PractitionerRole-Role-FromPrac-CPSID.md), [PractitionerRole/IPC.00047422.BC.PRS](PractitionerRole-IPC.00047422.BC.PRS.md), [PractitionerRole/IPC.00147422.BC.PRS](PractitionerRole-IPC.00147422.BC.PRS.md), [PractitionerRole/IPC.00147433.BC.PRS](PractitionerRole-IPC.00147433.BC.PRS.md), [PractitionerRole/IPC.00147622.BC.PRS](PractitionerRole-IPC.00147622.BC.PRS.md) and [PractitionerRole/IPC.00147699.BC.PRS](PractitionerRole-IPC.00147699.BC.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-specialty-source-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-specialty-source-extension.csv), [Excel](StructureDefinition-bc-specialty-source-extension.xlsx), [Schematron](StructureDefinition-bc-specialty-source-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-specialty-source-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension",
  "version" : "1.0.0",
  "name" : "SpecialtySourceExtension",
  "title" : "BC Specialty Source Extension",
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
  "description" : "The specialty source.",
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
    "expression" : "PractitionerRole.specialty"
  },
  {
    "type" : "element",
    "expression" : "Practitioner.communication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Specialty Source Extension",
      "definition" : "The specialty source."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension"
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
