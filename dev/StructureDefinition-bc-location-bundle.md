# BCLocationBundle - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCLocationBundle**

## Resource Profile: BCLocationBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCLocationBundle |

 
A bundle that submits Location information. 

This profile sets the minimum expectations for a Bundle resource that is being used to a transaction to maintain a Location.

### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements:

**Each Bundle must have:**

1. a fixed code for the type of 'collection'

**Each Bundle entry must support:**

1. a unique fullUrl as urn:uuid
1. a resource which is of type:
* BC Location (mandatory)
* BC Organizaiton Affiliation (optional)
* BC Role Relationship (optional)

### Examples

* [Add Location Bundle Example](Bundle-Example-AddLocation-Bundle.md)

**Usages:**

* Examples for this Profile: [Bundle/Example-AddLocation-Bundle](Bundle-Example-AddLocation-Bundle.md), [Bundle/Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md), [Bundle/Example-AddLocationWithLinks-Bundle](Bundle-Example-AddLocationWithLinks-Bundle.md) and [Bundle/Example-UpdateLocationWithLinks-Bundle](Bundle-Example-UpdateLocationWithLinks-Bundle.md)
* CapabilityStatements using this Profile: [BC PLR Client Capability Statement](CapabilityStatement-bc-plr-client-capability-statement.md) and [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-location-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-location-bundle.csv), [Excel](StructureDefinition-bc-location-bundle.xlsx), [Schematron](StructureDefinition-bc-location-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-location-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle",
  "version" : "1.0.0",
  "name" : "BCLocationBundle",
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
  "description" : "A bundle that submits Location information.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "constraint" : [
          {
            "key" : "invariant-loc-bundle-1",
            "severity" : "warning",
            "human" : "In a Location Bundle, OrganizationAffiliation.location.identifiers should match other entries' OrganizationAffiliation.location.identifiers in the Bundle.",
            "expression" : "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).location.identifier.value.distinct().count() = 1)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
          },
          {
            "key" : "invariant-loc-bundle-2",
            "severity" : "warning",
            "human" : "In a Location Bundle, PractitionerRole.location.identifiers should match other entries' PractitionerRole.location.identifiers in the Bundle.",
            "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).location.identifier.value.distinct().count() = 1)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
          },
          {
            "key" : "invariant-loc-bundle-3",
            "severity" : "error",
            "human" : "In a Location Bundle, PractitionerRole.location.identifier should match at least one identifier in Location.",
            "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).location.identifier.value.distinct() in Bundle.entry.resource.ofType(Location).identifier.value)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
          },
          {
            "key" : "invariant-loc-bundle-4",
            "severity" : "error",
            "human" : "In a Location Bundle, OrganizationAffiliation.location.identifier should match at least one identifier in Location.",
            "expression" : "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).location.identifier.value.distinct() in Bundle.entry.resource.ofType(Location).identifier.value)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
          }
        ]
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "collection",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "description" : "The specific bundle entries that are needed for creating or updating a BC Location.",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
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
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:Location",
        "path" : "Bundle.entry",
        "sliceName" : "Location",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Location.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Location",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:OrganizationAffiliation",
        "path" : "Bundle.entry",
        "sliceName" : "OrganizationAffiliation",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:OrganizationAffiliation.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "OrganizationAffiliation",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PractitionerRole",
        "path" : "Bundle.entry",
        "sliceName" : "PractitionerRole",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:PractitionerRole.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
            ]
          }
        ]
      }
    ]
  }
}

```
