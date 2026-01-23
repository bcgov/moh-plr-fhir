# Example-PractitionerRole-2-OrgRef-FromPractitioner - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-PractitionerRole-2-OrgRef-FromPractitioner**

## Example PractitionerRole: Example-PractitionerRole-2-OrgRef-FromPractitioner

Profile: [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)

**BC Practitioner to Organization or Practitioner to Practitioner Type Extension.**: Employee

**period**: 2000-01-01 --> (ongoing)

**practitioner**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147422.BC.PRS (, period: 2000-01-01 --> (ongoing))

**organization**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147436.BC.PRS (, period: 2000-01-01 --> (ongoing))



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "RELN.123.PRS",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
    ]
  },
  "extension" : [
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system",
            "code" : "EE"
          }
        ]
      }
    }
  ],
  "period" : {
    "start" : "2000-01-01"
  },
  "practitioner" : {
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00147422.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  },
  "organization" : {
    "identifier" : {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension",
          "valueIdentifier" : {
            "assigner" : {
              "display" : "MOH"
            }
          }
        }
      ],
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00147436.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  }
}

```
