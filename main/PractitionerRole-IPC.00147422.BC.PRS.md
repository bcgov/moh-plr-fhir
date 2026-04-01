# Example-PractitionerRole-1-Role-FromPractitioner - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-PractitionerRole-1-Role-FromPractitioner**

## Example PractitionerRole: Example-PractitionerRole-1-Role-FromPractitioner

Profile: [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md)

**practitioner**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147422.BC.PRS (, period: 2000-01-01 --> (ongoing))

**code**: MD

**specialty**: AMD53



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "IPC.00147422.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"]
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
  "code" : [{
    "coding" : [{
      "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scptype",
      "code" : "MD"
    }]
  }],
  "specialty" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2000-01-01",
        "end" : "2020-01-01"
      }
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension",
      "valueString" : "Expertise source"
    }],
    "coding" : [{
      "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scpqual",
      "code" : "AMD53"
    }]
  }]
}

```
