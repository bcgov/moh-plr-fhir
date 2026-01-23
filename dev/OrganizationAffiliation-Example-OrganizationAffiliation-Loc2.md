# Example-OrganizationAffiliation-Loc2 - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OrganizationAffiliation-Loc2**

## Example OrganizationAffiliation: Example-OrganizationAffiliation-Loc2

Profile: [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md)

**period**: 2000-01-01 --> (ongoing)

**organization**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.90009000.PRS.BC (, period: 2000-01-01 --> (ongoing))

**code**: OWNS

**location**: Identifier: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.001474222.BC.PRS (, period: 2000-01-01 --> (ongoing))



## Resource Content

```json
{
  "resourceType" : "OrganizationAffiliation",
  "id" : "Example-OrganizationAffiliation-Loc2",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
    ]
  },
  "period" : {
    "start" : "2000-01-01"
  },
  "organization" : {
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.90009000.PRS.BC",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system",
          "code" : "OWNS"
        }
      ]
    }
  ],
  "location" : [
    {
      "identifier" : {
        "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
        "value" : "IFC.001474222.BC.PRS",
        "period" : {
          "start" : "2000-01-01"
        }
      }
    }
  ]
}

```
