# BCPractitionerBundle - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCPractitionerBundle**

## Resource Profile: BCPractitionerBundle 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:BCPractitionerBundle |

 
A bundle that submits Practitioner and PractitionerRole information. 

This profile sets the minimum expectations for a Bundle resource that is being used to a transaction to maintain a Practitioner.

### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements

**Each Bundle must have:**

1. a fixed code for the type of 'collection'

**Each Bundle entry must support:**

1. a unique fullUrl of urn:uuid
1. a resource which is of type:
* BC Practitoner (mandatory)
* BC Practitoner Role (optional)
* BC Role Relationship (optional)

### Examples

* [Add Practitioner Bundle Example](Bundle-Example-AddPractitioner-Bundle.md)

**Usages:**

* Use this Profile: [BCBatchBundle](StructureDefinition-bc-batch-bundle.md) and [BCBatchReponseBundle](StructureDefinition-bc-batch-response-bundle.md)
* Examples for this Profile: [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md)... Show 6 more, [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md) and [Bundle/Example-UpdatePractitioner-LicenseStatus-Bundle](Bundle-Example-UpdatePractitioner-LicenseStatus-Bundle.md)
* CapabilityStatements using this Profile: [BC PLR Client Capability Statement](CapabilityStatement-bc-plr-client-capability-statement.md) and [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-practitioner-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-practitioner-bundle.csv), [Excel](StructureDefinition-bc-practitioner-bundle.xlsx), [Schematron](StructureDefinition-bc-practitioner-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-practitioner-bundle",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle",
  "version" : "1.0.0",
  "name" : "BCPractitionerBundle",
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
  "description" : "A bundle that submits Practitioner and PractitionerRole information.",
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
      "path" : "Bundle",
      "constraint" : [{
        "key" : "invariant-prac-bundle-1",
        "severity" : "error",
        "human" : "In a Practitioner Bundle, PractitionerRole.practitioner.identifier must match at least one identifier in Practitioner.",
        "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-practitioner-role')).practitioner.identifier.value in Bundle.entry.resource.ofType(Practitioner).identifier.value",
        "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "key" : "invariant-prac-bundle-2",
        "severity" : "warning",
        "human" : "In a Practitioner Bundle, PractitionerRole.practitioner.identifier should match other PractitionerRole practitioner identifiers in the Bundle.",
        "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).practitioner.identifier.value.distinct().count() = 1)",
        "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "key" : "invariant-prac-bundle-3",
        "severity" : "error",
        "human" : "In a Practitioner Bundle, each PractitionerRole.practitioner.identifier should match at least one identifier in Practitioner.",
        "expression" : "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).practitioner.identifier.value.distinct() in Bundle.entry.resource.ofType(Practitioner).identifier.value)",
        "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      }]
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
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "description" : "The specific bundle entries that are needed for creating or updating a BC Practitioner.",
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
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
      "id" : "Bundle.entry:Practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "Practitioner",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Practitioner.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"]
      }]
    },
    {
      "id" : "Bundle.entry:PractitionerRole",
      "path" : "Bundle.entry",
      "sliceName" : "PractitionerRole",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:PractitionerRole.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"]
      }]
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
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"]
      }]
    }]
  }
}

```
