# BCOrganizationAffiliation - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCOrganizationAffiliation**

## Resource Profile: BCOrganizationAffiliation 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCOrganizationAffiliation |

 
General constraints on the OrganizationAffiliation resource for use in the BC Provider Registry project. 

This profile sets the minimum expectations for an OrganizationAffiliation resource that is used to convey the relationship between two Organizations or between an Organization and the Locations associated with it.

### Mandatory and Must Support Data Elements

This OrganizationAffiliation profile has the following mandatory elements:

**Each OrganizationAffiliation must have:**

1. a reference to an Organization

**Each OrganizationAffiliation must have either:**

1. a reference to a participating Organization or
1. a reference to a single Locations

**Each OrganizationAffilation must support:**

1. whether the OrganizationAffiliation is active or not
1. the period over which the OrganizationAffiliation is active
1. an identifier
1. a code that identifies the type of relationship

### Examples

**Usages:**

* Use this Profile: [BCLocationBundle](StructureDefinition-bc-location-bundle.md) and [BCOrganizationBundle](StructureDefinition-bc-organization-bundle.md)
* Examples for this Profile: [OrganizationAffiliation/Example-OrganizationAffiliation-Loc1](OrganizationAffiliation-Example-OrganizationAffiliation-Loc1.md), [OrganizationAffiliation/Example-OrganizationAffiliation-Loc2](OrganizationAffiliation-Example-OrganizationAffiliation-Loc2.md), [OrganizationAffiliation/RELN.1142.PRS](OrganizationAffiliation-RELN.1142.PRS.md), [OrganizationAffiliation/RELN.1182.PRS](OrganizationAffiliation-RELN.1182.PRS.md)... Show 8 more, [OrganizationAffiliation/RELN.131.PRS](OrganizationAffiliation-RELN.131.PRS.md), [OrganizationAffiliation/RELN.132.PRS](OrganizationAffiliation-RELN.132.PRS.md), [OrganizationAffiliation/RELN.141.PRS](OrganizationAffiliation-RELN.141.PRS.md), [OrganizationAffiliation/RELN.142.PRS](OrganizationAffiliation-RELN.142.PRS.md), [OrganizationAffiliation/RELN.181.PRS](OrganizationAffiliation-RELN.181.PRS.md), [OrganizationAffiliation/RELN.182.PRS](OrganizationAffiliation-RELN.182.PRS.md), [OrganizationAffiliation/RELN.25.PRS](OrganizationAffiliation-RELN.25.PRS.md) and [OrganizationAffiliation/RELN.26.PRS](OrganizationAffiliation-RELN.26.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-organization-affiliation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-organization-affiliation.csv), [Excel](StructureDefinition-bc-organization-affiliation.xlsx), [Schematron](StructureDefinition-bc-organization-affiliation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-organization-affiliation",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation",
  "version" : "1.0.0",
  "name" : "BCOrganizationAffiliation",
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
  "description" : "General constraints on the OrganizationAffiliation resource for use in the BC Provider Registry project.",
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
  "type" : "OrganizationAffiliation",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-organizationaffiliation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "OrganizationAffiliation",
        "path" : "OrganizationAffiliation",
        "constraint" : [
          {
            "key" : "invariant-rltn-2",
            "severity" : "error",
            "human" : "One participating organization or one location allowed; not both.",
            "expression" : "participatingOrganization.count()=1 xor location.count()=1",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
          }
        ]
      },
      {
        "id" : "OrganizationAffiliation.extension:endReason",
        "path" : "OrganizationAffiliation.extension",
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
        "id" : "OrganizationAffiliation.extension:owner",
        "path" : "OrganizationAffiliation.extension",
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
        "id" : "OrganizationAffiliation.identifier",
        "path" : "OrganizationAffiliation.identifier",
        "mustSupport" : true
      },
      {
        "id" : "OrganizationAffiliation.active",
        "path" : "OrganizationAffiliation.active",
        "mustSupport" : true
      },
      {
        "id" : "OrganizationAffiliation.period",
        "path" : "OrganizationAffiliation.period",
        "mustSupport" : true
      },
      {
        "id" : "OrganizationAffiliation.organization",
        "path" : "OrganizationAffiliation.organization",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "OrganizationAffiliation.participatingOrganization",
        "path" : "OrganizationAffiliation.participatingOrganization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "OrganizationAffiliation.code",
        "path" : "OrganizationAffiliation.code",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "OrganizationAffiliation.location",
        "path" : "OrganizationAffiliation.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
