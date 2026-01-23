# Example-Organization-1-Update - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Organization-1-Update**

## Example Organization: Example-Organization-1-Update

Profile: [BCOrganization](StructureDefinition-bc-organization.md)

> **BC Notes Extension**
* identifier: `http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-note-id`/Note-3
* text: Note text
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 1998-01-02 --> (ongoing)
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

**identifier**: [CaBcPlrOrgId](NamingSystem-ca-bc-plr-org-id.md)/123123123 (, period: 2000-01-01 --> (ongoing)), [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147434.BC.PRS (, period: 2000-01-01 --> (ongoing))

**active**: true

**type**: Organization

**name**: Kelowna Clinic

**alias**: ABC Clinic - Kelowna

**telecom**: ph: 2502222234

**address**: 1000 DOUGLAS ST VICTORIA BC V6P7B8 CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "IPC.00147434.BC.PRS",
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
            "value" : "Note-3"
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
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
                "code" : "CHG"
              }
            ]
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-org-id",
      "value" : "123123123",
      "period" : {
        "start" : "2000-01-01"
      }
    },
    {
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
      "value" : "IPC.00147434.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  ],
  "active" : true,
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-organization-role-code-system",
          "code" : "ORG"
        }
      ]
    }
  ],
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
      },
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
              "code" : "CHG"
            }
          ]
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
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
                "code" : "CHG"
              }
            ]
          }
        }
      ],
      "system" : "phone",
      "value" : "2502222234",
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
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
                "code" : "CHG"
              }
            ]
          }
        }
      ],
      "type" : "postal",
      "line" : ["1000 DOUGLAS ST"],
      "city" : "VICTORIA",
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
