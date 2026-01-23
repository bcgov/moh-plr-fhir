# Example-Organization-1 - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Organization-1**

## Example Organization: Example-Organization-1

Profile: [BCOrganization](StructureDefinition-bc-organization.md)

> **BC Notes Extension**
* identifier: `http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-note-id`/Note-2
* text: Note text
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 1998-01-02 --> (ongoing)

> **BC License Status Extension**
* statusCode: active
* period: 2022-02-07 --> 2023-12-07
* statusReasonCode: Organization Provider
* statusClassCode: Assigned Entity

**identifier**: [CaBcPlrOrgId](NamingSystem-ca-bc-plr-org-id.md)/123123123 (, period: 2000-01-01 --> (ongoing))

**active**: true

**type**: Organization

**name**: Kelowna Clinic

**alias**: ABC Clinic - Kelowna

**telecom**: ph: 2501112234

**address**: 1000 DOUGLAS ST Kelowna BC V6P7B8 CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Example-Organization-1",
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
    },
    {
      "extension" : [
        {
          "url" : "statusCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleStatus",
                "code" : "active"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2022-02-07",
            "end" : "2023-12-07"
          }
        },
        {
          "url" : "statusReasonCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system",
                "code" : "ORG"
              }
            ]
          }
        },
        {
          "url" : "statusClassCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system",
                "code" : "AE"
              }
            ]
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-org-id",
      "value" : "123123123",
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
