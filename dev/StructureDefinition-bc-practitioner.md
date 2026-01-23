# BCPractitioner - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCPractitioner**

## Resource Profile: BCPractitioner 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCPractitioner |

 
General constraints on the Practitioner resource for use in the BC Provider Registry project. 

This profile sets the minimum expectations for a Practitioner resource that is being used in a transaction to create/update a Practitioner.

### Mandatory Data Elements

This Practitioner profile has the following mandatory elements:

**Each Practitioner must have:**

1. an identifier
1. at least one name

### Contained Resources

This Practitioner profile has a list of contained Organizations that are referenced by the Qualification information. There will be no separate instance of an issuing organization.

### Examples

* [Practitioner Example](Practitioner-Example-AddPractitioner-Practitioner.md)

**Usages:**

* Use this Profile: [BCPractitionerBundle](StructureDefinition-bc-practitioner-bundle.md)
* Refer to this Profile: [BC Practitioner to Practitioner Relationship Extension](StructureDefinition-bc-practitioner-relationship-extension.md), [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md) and [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)
* Examples for this Profile: [Practitioner/Example-AddPractitioner-Practitioner](Practitioner-Example-AddPractitioner-Practitioner.md), [Practitioner/IPC.00047422.BC.PRS](Practitioner-IPC.00047422.BC.PRS.md), [Practitioner/IPC.00147422.BC.PRS](Practitioner-IPC.00147422.BC.PRS.md), [Practitioner/IPC.00147433.BC.PRS](Practitioner-IPC.00147433.BC.PRS.md)... Show 4 more, [Practitioner/IPC.00147622.BC.PRS](Practitioner-IPC.00147622.BC.PRS.md), [Practitioner/IPC.00147699.BC.PRS](Practitioner-IPC.00147699.BC.PRS.md), [Practitioner/IPC.00187833.BC.PRS](Practitioner-IPC.00187833.BC.PRS.md) and [Practitioner/IPC.00763481.BC.PRS](Practitioner-IPC.00763481.BC.PRS.md)
* CapabilityStatements using this Profile: [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-practitioner.csv), [Excel](StructureDefinition-bc-practitioner.xlsx), [Schematron](StructureDefinition-bc-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-practitioner",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner",
  "version" : "1.0.0",
  "name" : "BCPractitioner",
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
  "description" : "General constraints on the Practitioner resource for use in the BC Provider Registry project.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-practitioner-registry",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner",
        "constraint" : [
          {
            "key" : "invariant-qual-1",
            "severity" : "error",
            "human" : "The number of qualifications must match the number of contained resources.",
            "expression" : "qualification.count()=contained.count()",
            "source" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
          }
        ]
      },
      {
        "id" : "Practitioner.contained",
        "path" : "Practitioner.contained",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "description" : "The organization that authorized a qualification.",
          "rules" : "open"
        }
      },
      {
        "id" : "Practitioner.contained:QualificationOrganization",
        "path" : "Practitioner.contained",
        "sliceName" : "QualificationOrganization",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:demographicsPeriod",
        "path" : "Practitioner.extension",
        "sliceName" : "demographicsPeriod",
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
        "id" : "Practitioner.extension:demographicsEndReason",
        "path" : "Practitioner.extension",
        "sliceName" : "demographicsEndReason",
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
        "id" : "Practitioner.extension:demographicsOwner",
        "path" : "Practitioner.extension",
        "sliceName" : "demographicsOwner",
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
        "id" : "Practitioner.extension:status",
        "path" : "Practitioner.extension",
        "sliceName" : "status",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:deathDate",
        "path" : "Practitioner.extension",
        "sliceName" : "deathDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-deathdate-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:birthplace",
        "path" : "Practitioner.extension",
        "sliceName" : "birthplace",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-birthplace-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:confidentiality",
        "path" : "Practitioner.extension",
        "sliceName" : "confidentiality",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:relationship",
        "path" : "Practitioner.extension",
        "sliceName" : "relationship",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:disciplinaryAction",
        "path" : "Practitioner.extension",
        "sliceName" : "disciplinaryAction",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.extension:note",
        "path" : "Practitioner.extension",
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
        "id" : "Practitioner.extension:condition",
        "path" : "Practitioner.extension",
        "sliceName" : "condition",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
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
        "id" : "Practitioner.active",
        "path" : "Practitioner.active",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-humanName"
            ]
          }
        ]
      },
      {
        "id" : "Practitioner.telecom",
        "path" : "Practitioner.telecom",
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
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
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
        "id" : "Practitioner.gender",
        "path" : "Practitioner.gender",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.birthDate.extension",
        "path" : "Practitioner.birthDate.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Practitioner.birthDate.extension:birthTime",
        "path" : "Practitioner.birthDate.extension",
        "sliceName" : "birthTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-birthtime-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification.extension:qualificationExtension",
        "path" : "Practitioner.qualification.extension",
        "sliceName" : "qualificationExtension",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-qualification-extension"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification.extension:endReason",
        "path" : "Practitioner.qualification.extension",
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
        "id" : "Practitioner.qualification.extension:owner",
        "path" : "Practitioner.qualification.extension",
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
        "id" : "Practitioner.qualification.identifier",
        "path" : "Practitioner.qualification.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification.code",
        "path" : "Practitioner.qualification.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-qualification-value-set"
        }
      },
      {
        "id" : "Practitioner.qualification.period",
        "path" : "Practitioner.qualification.period",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.qualification.issuer",
        "path" : "Practitioner.qualification.issuer",
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
        "id" : "Practitioner.communication",
        "path" : "Practitioner.communication",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-language-value-set"
        }
      },
      {
        "id" : "Practitioner.communication.extension:period",
        "path" : "Practitioner.communication.extension",
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
        "id" : "Practitioner.communication.extension:endReason",
        "path" : "Practitioner.communication.extension",
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
        "id" : "Practitioner.communication.extension:owner",
        "path" : "Practitioner.communication.extension",
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
      }
    ]
  }
}

```
