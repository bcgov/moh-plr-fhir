# Example-PractitionerRole-3-LocRef-FromPractitioner-Response - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-PractitionerRole-3-LocRef-FromPractitioner-Response**

## Example PractitionerRole: Example-PractitionerRole-3-LocRef-FromPractitioner-Response

Profile: [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)

**BC Practitioner to Location Type Extension.**: WORKSAT

**BC Owner Extension**: ?ngen-9?

**period**: 2000-01-01 --> (ongoing)

**practitioner**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147622.BC.PRS (, period: 2000-01-01 --> (ongoing))

**location**: Identifier: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.00047422.BC.PRS (, period: 2000-01-01 --> (ongoing))



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "RELN.126.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"]
  },
  "extension" : [{
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system",
        "code" : "WORKSAT"
      }]
    }
  },
  {
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension",
    "valueIdentifier" : {
      "assigner" : {
        "display" : "MOH"
      }
    }
  }],
  "period" : {
    "start" : "2000-01-01"
  },
  "practitioner" : {
    "identifier" : {
      "extension" : [{
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension",
        "valueIdentifier" : {
          "assigner" : {
            "display" : "MOH"
          }
        }
      }],
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00147622.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  },
  "location" : [{
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
      "value" : "IFC.00047422.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  }]
}

```
