# BCLocation - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCLocation**

## Resource Profile: BCLocation 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCLocation |

 
General constraints on the Location resource for use in the BC Provider Registry project. 

This profile sets the minimum expectations for a Location resource that is being used in a transaction to create/update.

### Mandatory and Must Support Data Elements

This Location profile has the following mandatory elements:

**Each Loation must have:**

1. a Physical Type (set as bu = Building only for now)

**Each Location must support:**

1. an identifier
1. a name, with optional
1. Period Extension
1. End Reason Extension

1. a list of alias
1. a description
1. telecom info and an address
1. a position for the absolute geographic location
1. the Physical Address Extension
1. the Service Area Extension
1. the Communication extension
1. the Note Extension
1. the Facility Details Extension, including:
1. Owner Name
1. Contact Name
1. Operator Name
1. Campus of Care Information
1. Valid Period
1. End Reason

**Usages:**

* Use this Profile: [BCLocationBundle](StructureDefinition-bc-location-bundle.md)
* Refer to this Profile: [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md) and [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)
* Examples for this Profile: [General Hospital](Location-Example-Location-For-Add.md), [General Hospital](Location-IFC.00047422.BC.PRS.md), [General Hospital](Location-IFC.00147422.BC.PRS.md) and [General Hospital](Location-IFC.00147423.BC.PRS.md)
* CapabilityStatements using this Profile: [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-location.csv), [Excel](StructureDefinition-bc-location.xlsx), [Schematron](StructureDefinition-bc-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-location",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location",
  "version" : "1.0.0",
  "name" : "BCLocation",
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
  "description" : "General constraints on the Location resource for use in the BC Provider Registry project.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location.extension:note",
        "path" : "Location.extension",
        "sliceName" : "note",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:facilityDetails",
        "path" : "Location.extension",
        "sliceName" : "facilityDetails",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:serviceArea",
        "path" : "Location.extension",
        "sliceName" : "serviceArea",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:physicalAddress",
        "path" : "Location.extension",
        "sliceName" : "physicalAddress",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.identifier",
        "path" : "Location.identifier",
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-identifier"
            ]
          }
        ]
      },
      {
        "id" : "Location.name.extension",
        "path" : "Location.name.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Location.name.extension:period",
        "path" : "Location.name.extension",
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
        "id" : "Location.name.extension:endReason",
        "path" : "Location.name.extension",
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
        "id" : "Location.name.extension:owner",
        "path" : "Location.name.extension",
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
        "id" : "Location.alias",
        "path" : "Location.alias",
        "mustSupport" : true
      },
      {
        "id" : "Location.description",
        "path" : "Location.description",
        "mustSupport" : true
      },
      {
        "id" : "Location.telecom",
        "path" : "Location.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-contactPoint"
            ]
          }
        ]
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.physicalType",
        "path" : "Location.physicalType",
        "short" : "bu is the only allowed code",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Location.physicalType.coding.code",
        "path" : "Location.physicalType.coding.code",
        "min" : 1,
        "fixedCode" : "bu"
      },
      {
        "id" : "Location.position",
        "path" : "Location.position",
        "mustSupport" : true
      },
      {
        "id" : "Location.position.longitude",
        "path" : "Location.position.longitude",
        "mustSupport" : true
      },
      {
        "id" : "Location.position.latitude",
        "path" : "Location.position.latitude",
        "mustSupport" : true
      }
    ]
  }
}

```
