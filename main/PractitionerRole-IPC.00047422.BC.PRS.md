# Example-Atomic-PractitionerRole-RoleSpecialty - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Atomic-PractitionerRole-RoleSpecialty**

## Example PractitionerRole: Example-Atomic-PractitionerRole-RoleSpecialty

Profile: [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md)

**practitioner**: Identifier: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00047422.BC.PRS (, period: 2000-01-01 --> (ongoing))

**code**: MD

**specialty**: AMD53



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "IPC.00047422.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"]
  },
  "practitioner" : {
    "identifier" : {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00047422.BC.PRS",
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
    "coding" : [{
      "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scpqual",
      "code" : "AMD53"
    }]
  }]
}

```
