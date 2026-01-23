# BCOperationOutcome - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCOperationOutcome**

## Resource Profile: BCOperationOutcome 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCOperationOutcome |

 
OperationOutcome for BC. 

**Usages:**

* Use this Profile: [BCBatchReponseBundle](StructureDefinition-bc-batch-response-bundle.md)
* Examples for this Profile: [OperationOutcome/Example-OperationOutcome-7018](OperationOutcome-Example-OperationOutcome-7018.md), [OperationOutcome/Example-OperationOutcome-7047](OperationOutcome-Example-OperationOutcome-7047.md), [OperationOutcome/Example-OperationOutcome-7049](OperationOutcome-Example-OperationOutcome-7049.md), [OperationOutcome/Example-OperationOutcome-BatchError](OperationOutcome-Example-OperationOutcome-BatchError.md)... Show 3 more, [OperationOutcome/Example-OperationOutcome-BatchSuccess](OperationOutcome-Example-OperationOutcome-BatchSuccess.md), [OperationOutcome/Example-OperationOutcome-MaintainSuccess](OperationOutcome-Example-OperationOutcome-MaintainSuccess.md) and [OperationOutcome/Example-OperationOutcome-Success](OperationOutcome-Example-OperationOutcome-Success.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-operation-outcome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-operation-outcome.csv), [Excel](StructureDefinition-bc-operation-outcome.xlsx), [Schematron](StructureDefinition-bc-operation-outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-operation-outcome",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome",
  "version" : "1.0.0",
  "name" : "BCOperationOutcome",
  "status" : "active",
  "date" : "2026-01-23T00:06:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [
    {
      "name" : "BC Ministry of Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
        }
      ]
    }
  ],
  "description" : "OperationOutcome for BC.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA",
          "display" : "Canada"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "OperationOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "OperationOutcome.issue.details",
        "path" : "OperationOutcome.issue.details",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "OperationOutcome.issue.details.coding",
        "path" : "OperationOutcome.issue.details.coding",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "OperationOutcome.issue.details.coding.system",
        "path" : "OperationOutcome.issue.details.coding.system",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "OperationOutcome.issue.details.coding.code",
        "path" : "OperationOutcome.issue.details.coding.code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "OperationOutcome.issue.details.text",
        "path" : "OperationOutcome.issue.details.text",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
