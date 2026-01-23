# BCOrganizationBundle - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCOrganizationBundle**

## Resource Profile: BCOrganizationBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCOrganizationBundle |

 
A bundle that submits Organization and OrganizationAffiliation information. 

This profile sets the minimum expectations for a Bundle resource that is being used to a transaction to maintain a Practitioner.

### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements:

**Each Bundle must have:**

1. a fixed code for the type of 'collection'

**Each Bundle entry must support:**

1. a unique fullUrl as urn:uuid
1. a resource which is of type:
* BC Organization (mandatory)
* BC Organizaiton Role (optional)
* BC Role Relationship (optional)

### Examples

* [Add Organization Bundle Example](Bundle-Example-AddOrganization-Bundle.md)

**Usages:**

* Examples for this Profile: [Bundle/Example-AddOrganization-Bundle](Bundle-Example-AddOrganization-Bundle.md), [Bundle/Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md), [Bundle/Example-UpdateOrganization-Bundle-Response](Bundle-Example-UpdateOrganization-Bundle-Response.md) and [Bundle/Example-UpdateOrganization-Bundle](Bundle-Example-UpdateOrganization-Bundle.md)
* CapabilityStatements using this Profile: [BC PLR Client Capability Statement](CapabilityStatement-bc-plr-client-capability-statement.md) and [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-organization-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-organization-bundle.csv), [Excel](StructureDefinition-bc-organization-bundle.xlsx), [Schematron](StructureDefinition-bc-organization-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-organization-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle",
  "version" : "1.0.0",
  "name" : "BCOrganizationBundle",
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
  "description" : "A bundle that submits Organization and OrganizationAffiliation information.",
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
            "key" : "invariant-org-bundle-1",
            "severity" : "warning",
            "human" : "In a Organization Bundle, OrganizationAffiliation.organization.identifiers should match other entries' OrganizationAffiliation.organization.identifiers in the Bundle.",
            "expression" : "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).organization.identifier.value.distinct().count() = 1)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
          },
          {
            "key" : "invariant-org-bundle-2",
            "severity" : "warning",
            "human" : "In a Organization Bundle, PractitionerRole.organization.identifiers should match other entries' PractitionerRole.organization.identifiers in the Bundle.",
            "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).organization.identifier.value.distinct().count() = 1)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
          },
          {
            "key" : "invariant-org-bundle-3",
            "severity" : "error",
            "human" : "In a Organization Bundle, PractitionerRole.organization.identifier should match at least one identifier in Organization.",
            "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).organization.identifier.value.distinct() in Bundle.entry.resource.ofType(Organization).identifier.value)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
          },
          {
            "key" : "invariant-org-bundle-4",
            "severity" : "error",
            "human" : "In a Organization Bundle, OrganizationAffiliation.organization.identifier should match at least one identifier in Organization.",
            "expression" : "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).organization.identifier.value.distinct() in Bundle.entry.resource.ofType(Organization).identifier.value)",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
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
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "The specific bundle entries that are needed for creating or updating a BC Organization.",
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
        "id" : "Bundle.entry:Organization",
        "path" : "Bundle.entry",
        "sliceName" : "Organization",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Organization.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
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
        "id" : "Bundle.entry:RoleRelationship",
        "path" : "Bundle.entry",
        "sliceName" : "RoleRelationship",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RoleRelationship.resource",
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
