# Example-Atomic-Organization - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Atomic-Organization**

## Example Organization: Example-Atomic-Organization

Profile: [BCOrganization](StructureDefinition-bc-organization.md)

> **BC Notes Extension**
* identifier: `http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-note-id`/Note-2
* text: Note text
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 1998-01-02 --> (ongoing)

**identifier**: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00047422.BC.PRS (, period: 2000-01-01 --> (ongoing))

**active**: true

**name**: Kelowna Clinic

**alias**: ABC Clinic - Kelowna

**telecom**: ph: 2501112234

**address**: 1000 DOUGLAS ST Kelowna BC V6P7B8 CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "IPC.00047422.BC.PRS",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "identifier",
          "valueIdentifier" : {
            "system" : "http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-note-id",
            "value" : "Note-2"
          }
        },
        {
          "url" : "text",
          "valueString" : "Note text"
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "1998-01-02"
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00047422.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  ],
  "active" : true,
  "name" : "Kelowna Clinic",
  "_name" : {
    "extension" : [
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension",
        "valueCode" : "official"
      },
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
        "valuePeriod" : {
          "start" : "2014-01-31T00:00:00-07:00"
        }
      }
    ]
  },
  "alias" : ["ABC Clinic - Kelowna"],
  "telecom" : [
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
                "code" : "BC"
              }
            ]
          }
        }
      ],
      "system" : "phone",
      "value" : "2501112234",
      "period" : {
        "start" : "2000-02-02"
      }
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
                "code" : "BC"
              }
            ]
          }
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-address-validation-status-code-system",
                "code" : "V"
              }
            ]
          }
        }
      ],
      "type" : "postal",
      "line" : ["1000 DOUGLAS ST"],
      "city" : "Kelowna",
      "state" : "BC",
      "postalCode" : "V6P7B8",
      "country" : "CA",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  ]
}

```
