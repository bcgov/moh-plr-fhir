# Example-OrganizationAffiliation-2-LocRef-FromOrg - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OrganizationAffiliation-2-LocRef-FromOrg**

## Example OrganizationAffiliation: Example-OrganizationAffiliation-2-LocRef-FromOrg

Profile: [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md)

**period**: 2000-01-01 --> (ongoing)

**organization**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147436.BC.PRS (, period: 2000-01-01 --> (ongoing))

**code**: operatesfrom

**location**: Identifier: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.00047422.BC.PRS (, period: 2000-01-01 --> (ongoing))



## Resource Content

```json
{
  "resourceType" : "OrganizationAffiliation",
  "id" : "RELN.132.PRS",
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
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system",
          "code" : "operatesfrom"
        }
      ]
    }
  ],
  "location" : [
    {
      "identifier" : {
        "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
        "value" : "IFC.00047422.BC.PRS",
        "period" : {
          "start" : "2000-01-01"
        }
      }
    }
  ]
}

```
