# BC Practitioner to Practitioner Relationship Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Practitioner to Practitioner Relationship Extension**

## Extension: BC Practitioner to Practitioner Relationship Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:PractitionerRelationshipExtension |

Allows for relationships of practitioners to practitioners without needing CareTeam semantics.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCPractitioner](StructureDefinition-bc-practitioner.md)
* Examples for this Extension: [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md)... Show 13 more, [Bundle/Example-GET-Practitioner-Param-Response](Bundle-Example-GET-Practitioner-Param-Response.md), [Bundle/Example-GET-Practitioner-Response](Bundle-Example-GET-Practitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [Practitioner/IPC.00047422.BC.PRS](Practitioner-IPC.00047422.BC.PRS.md), [Practitioner/IPC.00147422.BC.PRS](Practitioner-IPC.00147422.BC.PRS.md), [Practitioner/IPC.00147622.BC.PRS](Practitioner-IPC.00147622.BC.PRS.md) and [Practitioner/IPC.00187833.BC.PRS](Practitioner-IPC.00187833.BC.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-practitioner-relationship-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-practitioner-relationship-extension.csv), [Excel](StructureDefinition-bc-practitioner-relationship-extension.xlsx), [Schematron](StructureDefinition-bc-practitioner-relationship-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-practitioner-relationship-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension",
  "version" : "1.0.0",
  "name" : "PractitionerRelationshipExtension",
  "title" : "BC Practitioner to Practitioner Relationship Extension",
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
  "description" : "Allows for relationships of practitioners to practitioners without needing CareTeam semantics.",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Practitioner"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BC Practitioner to Practitioner Relationship Extension",
        "definition" : "Allows for relationships of practitioners to practitioners without needing CareTeam semantics."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 3
      },
      {
        "id" : "Extension.extension:period",
        "path" : "Extension.extension",
        "sliceName" : "period",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:targetPractitioner",
        "path" : "Extension.extension",
        "sliceName" : "targetPractitioner",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:targetPractitioner.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:targetPractitioner.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "targetPractitioner"
      },
      {
        "id" : "Extension.extension:targetPractitioner.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:relationshipType",
        "path" : "Extension.extension",
        "sliceName" : "relationshipType",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:relationshipType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:relationshipType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "relationshipType"
      },
      {
        "id" : "Extension.extension:relationshipType.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:logicalId",
        "path" : "Extension.extension",
        "sliceName" : "logicalId",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:logicalId.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:logicalId.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "logicalId"
      },
      {
        "id" : "Extension.extension:logicalId.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:endReason",
        "path" : "Extension.extension",
        "sliceName" : "endReason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:owner",
        "path" : "Extension.extension",
        "sliceName" : "owner",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
