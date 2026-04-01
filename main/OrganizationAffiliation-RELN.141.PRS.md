# Example-OrganizationAffiliation-3-OrgRef-FromOrg - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OrganizationAffiliation-3-OrgRef-FromOrg**

## Example OrganizationAffiliation: Example-OrganizationAffiliation-3-OrgRef-FromOrg

Profile: [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md)

**period**: 2000-01-01 --> (ongoing)

**organization**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147437.BC.PRS (, period: 2000-01-01 --> (ongoing))

**participatingOrganization**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.001164553.BC.PRS (, period: 2000-02-02 --> (ongoing))

**code**: deptof



## Resource Content

```json
{
  "resourceType" : "OrganizationAffiliation",
  "id" : "RELN.141.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"]
  },
  "period" : {
    "start" : "2000-01-01"
  },
  "organization" : {
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00147437.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  },
  "participatingOrganization" : {
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.001164553.BC.PRS",
      "period" : {
        "start" : "2000-02-02"
      }
    }
  },
  "code" : [{
    "coding" : [{
      "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system",
      "code" : "deptof"
    }]
  }]
}

```
