# Example-PractitionerRole-Loc3-U - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-PractitionerRole-Loc3-U**

## Example PractitionerRole: Example-PractitionerRole-Loc3-U

Profile: [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)

**BC Practitioner to Location Type Extension.**: PRACTICES_AT

**BC End Reason Extension**: Change

**period**: 2000-01-01 --> (ongoing)

**practitioner**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.80008000.PRS.BC (, period: 2000-01-01 --> (ongoing))

**location**: Identifier: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.00147422.BC.PRS (, period: 2000-01-01 --> (ongoing))



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "RELN.1125.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"]
  },
  "extension" : [{
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system",
        "code" : "PRACTICES_AT"
      }]
    }
  },
  {
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
        "code" : "CHG"
      }]
    }
  }],
  "period" : {
    "start" : "2000-01-01"
  },
  "practitioner" : {
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.80008000.PRS.BC",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  },
  "location" : [{
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
      "value" : "IFC.00147422.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  }]
}

```
