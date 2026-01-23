# BCPractitionerRole - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCPractitionerRole**

## Resource Profile: BCPractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCPractitionerRole |

 
General constraints on the PractitionerRole resource for use in the BC Provider Registry project. 

This profile represents the Provider's role and Provider's expertise (specialty). Each BCPractitioner resource in a Bundle must have a BCPractitionerRole resource as the two combined can describe the minimum data set for Providers.

### Mandatory Data Elements

This PractitionerRole profile has the following mandatory elements:

**Each PractitionerRole must have:**

1. a reference to a BC Practitioner
1. a code (representing the Provider role)

### Examples

Look in this [Bundle](Bundle-Example-AddPractitioner-Bundle.md) for an example of BCPractitionerRole.

**Usages:**

* Use this Profile: [BCPractitionerBundle](StructureDefinition-bc-practitioner-bundle.md)
* Examples for this Profile: [PractitionerRole/Example-PractitionerRole-Role-FromPrac-CPSID](PractitionerRole-Example-PractitionerRole-Role-FromPrac-CPSID.md), [PractitionerRole/IPC.00047422.BC.PRS](PractitionerRole-IPC.00047422.BC.PRS.md), [PractitionerRole/IPC.00147422.BC.PRS](PractitionerRole-IPC.00147422.BC.PRS.md), [PractitionerRole/IPC.00147433.BC.PRS](PractitionerRole-IPC.00147433.BC.PRS.md)... Show 4 more, [PractitionerRole/IPC.00147622.BC.PRS](PractitionerRole-IPC.00147622.BC.PRS.md), [PractitionerRole/IPC.00147633.BC.PRS](PractitionerRole-IPC.00147633.BC.PRS.md), [PractitionerRole/IPC.00147699.BC.PRS](PractitionerRole-IPC.00147699.BC.PRS.md) and [PractitionerRole/IPC.00763481.BC.PRS](PractitionerRole-IPC.00763481.BC.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-practitioner-role)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-practitioner-role.csv), [Excel](StructureDefinition-bc-practitioner-role.xlsx), [Schematron](StructureDefinition-bc-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-practitioner-role",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role",
  "version" : "1.0.0",
  "name" : "BCPractitionerRole",
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
  "description" : "General constraints on the PractitionerRole resource for use in the BC Provider Registry project.",
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
            "key" : "invariant-role-1",
            "severity" : "error",
            "human" : "The organization and location references are not permitted in this profile.",
            "expression" : "organization.count()=0 and location.count()=0",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
          }
        ]
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
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-practitioner-role-value-set"
        }
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-expertise-value-set"
        }
      },
      {
        "id" : "PractitionerRole.specialty.extension:specialtySource",
        "path" : "PractitionerRole.specialty.extension",
        "sliceName" : "specialtySource",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.specialty.extension:owner",
        "path" : "PractitionerRole.specialty.extension",
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
        "id" : "PractitionerRole.specialty.extension:period",
        "path" : "PractitionerRole.specialty.extension",
        "sliceName" : "period",
        "min" : 0,
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
        "id" : "PractitionerRole.specialty.extension:endReason",
        "path" : "PractitionerRole.specialty.extension",
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
