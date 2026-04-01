# BCBatchReponseBundle - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCBatchReponseBundle**

## Resource Profile: BCBatchReponseBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-batch-response-bundle | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:BCBatchReponseBundle |

 
A Bundle that is used in the PLR Batch operation. 

**Usages:**

* Examples for this Profile: [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-batch-response-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-batch-response-bundle.csv), [Excel](StructureDefinition-bc-batch-response-bundle.xlsx), [Schematron](StructureDefinition-bc-batch-response-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-batch-response-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-batch-response-bundle",
  "version" : "1.0.0",
  "name" : "BCBatchReponseBundle",
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
  "description" : "A Bundle that is used in the PLR Batch operation.",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "fixedCode" : "batch-response",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "description" : "The specific bundle entities that are returned when creating or updating a BC Practitioner in Batch",
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.search",
      "path" : "Bundle.entry.search",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.response",
      "path" : "Bundle.entry.response",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "Practitioner",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Practitioner.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Bundle",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"]
      }]
    },
    {
      "id" : "Bundle.entry:Practitioner.response.outcome",
      "path" : "Bundle.entry.response.outcome",
      "type" : [{
        "code" : "OperationOutcome",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"]
      }]
    },
    {
      "id" : "Bundle.entry:OperationOutcome",
      "path" : "Bundle.entry",
      "sliceName" : "OperationOutcome",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:OperationOutcome.response.outcome",
      "path" : "Bundle.entry.response.outcome",
      "type" : [{
        "code" : "OperationOutcome",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"]
      }]
    }]
  }
}

```
