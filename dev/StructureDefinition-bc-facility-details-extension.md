# BC Facility Details Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Facility Details Extension**

## Extension: BC Facility Details Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension | *Version*:1.0.0 |
| Draft as of 2026-01-23 | *Computable Name*:FacilityDetailsExtension |

Provides the details of a facility as represented by a FHIR location.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCLocation](StructureDefinition-bc-location.md)
* Examples for this Extension: [Bundle/Example-AddLocation-Bundle](Bundle-Example-AddLocation-Bundle.md), [Bundle/Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md), [Bundle/Example-AddLocationWithLinks-Bundle](Bundle-Example-AddLocationWithLinks-Bundle.md), [Bundle/Example-UpdateLocationWithLinks-Bundle](Bundle-Example-UpdateLocationWithLinks-Bundle.md)... Show 6 more, [General Hospital](Location-Example-Location-For-Add.md), [General Hospital](Location-IFC.00147422.BC.PRS.md), [General Hospital](Location-IFC.00147423.BC.PRS.md), [Parameters/Example-Request-Add-Location](Parameters-Example-Request-Add-Location.md), [Parameters/Example-Request-Update-Location](Parameters-Example-Request-Update-Location.md) and [Parameters/Example-Response-Add-Location](Parameters-Example-Response-Add-Location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-facility-details-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-facility-details-extension.csv), [Excel](StructureDefinition-bc-facility-details-extension.xlsx), [Schematron](StructureDefinition-bc-facility-details-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-facility-details-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension",
  "version" : "1.0.0",
  "name" : "FacilityDetailsExtension",
  "title" : "BC Facility Details Extension",
  "status" : "draft",
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
  "description" : "Provides the details of a facility as represented by a FHIR location.",
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
      "expression" : "Location"
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
        "short" : "BC Facility Details Extension",
        "definition" : "Provides the details of a facility as represented by a FHIR location."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:campusOfCare",
        "path" : "Extension.extension",
        "sliceName" : "campusOfCare",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:campusOfCare.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:campusOfCare.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "campusOfCare"
      },
      {
        "id" : "Extension.extension:campusOfCare.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:operatorName",
        "path" : "Extension.extension",
        "sliceName" : "operatorName",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:operatorName.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:operatorName.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "operatorName"
      },
      {
        "id" : "Extension.extension:operatorName.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:ownerName",
        "path" : "Extension.extension",
        "sliceName" : "ownerName",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:ownerName.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:ownerName.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "ownerName"
      },
      {
        "id" : "Extension.extension:ownerName.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:contactName",
        "path" : "Extension.extension",
        "sliceName" : "contactName",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:contactName.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:contactName.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "contactName"
      },
      {
        "id" : "Extension.extension:contactName.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
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
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
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
