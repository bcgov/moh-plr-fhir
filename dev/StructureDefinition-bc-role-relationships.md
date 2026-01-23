# BCRoleRelationships - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCRoleRelationships**

## Resource Profile: BCRoleRelationships 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCRoleRelationships |

 
General constraints on the PractitionerRole resource for use in the BC Provider Registry project to describe relationships. 

This profile represents the Provider's relationships to Locations and Organizations. Each BCRoleRelationship must represent one and only one relationship.

### Mandatory Data Elements

This PractitionerRole profile has the following mandatory elements:

**Each PractitionerRole must have:**

1. a reference to a BC Practitioner
1. a reference to location or organization

### Examples

Look in this [Bundle](Bundle-Example-DistributePractitioner-Bundle.md) for an example of BCRoleRelationship.

**Usages:**

* Use this Profile: [BCLocationBundle](StructureDefinition-bc-location-bundle.md), [BCOrganizationBundle](StructureDefinition-bc-organization-bundle.md) and [BCPractitionerBundle](StructureDefinition-bc-practitioner-bundle.md)
* Examples for this Profile: [PractitionerRole/Example-PractitionerRole-Loc3](PractitionerRole-Example-PractitionerRole-Loc3.md), [PractitionerRole/RELN.1125.PRS](PractitionerRole-RELN.1125.PRS.md), [PractitionerRole/RELN.123.PRS](PractitionerRole-RELN.123.PRS.md), [PractitionerRole/RELN.12373.PRS](PractitionerRole-RELN.12373.PRS.md)... Show 13 more, [PractitionerRole/RELN.124.PRS](PractitionerRole-RELN.124.PRS.md), [PractitionerRole/RELN.125.PRS](PractitionerRole-RELN.125.PRS.md), [PractitionerRole/RELN.126.PRS](PractitionerRole-RELN.126.PRS.md), [PractitionerRole/RELN.127.PRS](PractitionerRole-RELN.127.PRS.md), [PractitionerRole/RELN.128.PRS](PractitionerRole-RELN.128.PRS.md), [PractitionerRole/RELN.129.PRS](PractitionerRole-RELN.129.PRS.md), [PractitionerRole/RELN.130.PRS](PractitionerRole-RELN.130.PRS.md), [PractitionerRole/RELN.153.PRS](PractitionerRole-RELN.153.PRS.md), [PractitionerRole/RELN.173.PRS](PractitionerRole-RELN.173.PRS.md), [PractitionerRole/RELN.175.PRS](PractitionerRole-RELN.175.PRS.md), [PractitionerRole/RELN.193.PRS](PractitionerRole-RELN.193.PRS.md), [PractitionerRole/RELN.23.PRS](PractitionerRole-RELN.23.PRS.md) and [PractitionerRole/RELN.24.PRS](PractitionerRole-RELN.24.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-role-relationships)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-role-relationships.csv), [Excel](StructureDefinition-bc-role-relationships.xlsx), [Schematron](StructureDefinition-bc-role-relationships.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-role-relationships",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships",
  "version" : "1.0.0",
  "name" : "BCRoleRelationships",
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
  "description" : "General constraints on the PractitionerRole resource for use in the BC Provider Registry project to describe relationships.",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-practitionerrole-registry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole",
        "constraint" : [
          {
            "key" : "invariant-rltn-1",
            "severity" : "error",
            "human" : "One organization or one location allowed; not both.",
            "expression" : "organization.count()=1 xor location.count()=1",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
          }
        ]
      },
      {
        "id" : "PractitionerRole.extension:endReason",
        "path" : "PractitionerRole.extension",
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
        "id" : "PractitionerRole.extension:owner",
        "path" : "PractitionerRole.extension",
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
        "id" : "PractitionerRole.extension:typeExtension",
        "path" : "PractitionerRole.extension",
        "sliceName" : "typeExtension",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.extension:locRelationshipType",
        "path" : "PractitionerRole.extension",
        "sliceName" : "locRelationshipType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.period",
        "path" : "PractitionerRole.period",
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
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
        "id" : "PractitionerRole.organization.type",
        "path" : "PractitionerRole.organization.type",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "max" : "0"
      },
      {
        "id" : "PractitionerRole.location",
        "path" : "PractitionerRole.location",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.telecom",
        "path" : "PractitionerRole.telecom",
        "type" : [
          {
            "code" : "ContactPoint",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-contactPoint"
            ]
          }
        ]
      }
    ]
  }
}

```
