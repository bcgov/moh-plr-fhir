# Example-Practitioner-UpdateLicense - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Practitioner-UpdateLicense**

## Example Practitioner: Example-Practitioner-UpdateLicense

Profile: [BCPractitioner](StructureDefinition-bc-practitioner.md)

> **BC License Status Extension**
* statusCode: Inactive
* statusReasonCode: Left the Province
* statusClassCode: Licensure
* period: 2022-06-24 --> (ongoing)
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

**identifier**: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00763481.BC.PRS (, period: 2000-01-01 --> (ongoing))

**name**: null 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "IPC.00763481.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "statusCode",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system",
          "code" : "INACTIVE"
        }]
      }
    },
    {
      "url" : "statusReasonCode",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system",
          "code" : "LTP"
        }]
      }
    },
    {
      "url" : "statusClassCode",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system",
          "code" : "LIC"
        }]
      }
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2022-06-24"
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
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
  }],
  "identifier" : [{
    "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
    "value" : "IPC.00763481.BC.PRS",
    "period" : {
      "start" : "2000-01-01"
    }
  }],
  "name" : [{
    "_family" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "not-applicable"
      }]
    }
  }]
}

```
