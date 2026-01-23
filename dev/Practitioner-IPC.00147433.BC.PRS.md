# Example-Practitioner-Update - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Practitioner-Update**

## Example Practitioner: Example-Practitioner-Update

Profile: [BCPractitioner](StructureDefinition-bc-practitioner.md)

> **BC License Status Extension**
* statusCode: Inactive
* statusReasonCode: Left the Province
* statusClassCode: Licensure
* period: 2022-06-24 --> (ongoing)
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

> **BC Practitioner Disciplinary Actions Extension**
* identifier: DA-1
* description: Description
* archiveDate: 2000-01-01
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 1998-01-02 --> (ongoing)
* displayFlag: false
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

> **BC Notes Extension**
* identifier: `http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-note-id`/Note-3
* text: Note text
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 1998-01-02 --> (ongoing)
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

> **BC Practitioner Conditions Extension**
* identifier: `http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-condition-id`/Condition-2
* restriction: false
* restrictionText: Restriction text
* code: EXP
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 1998-01-02 --> (ongoing)
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

> **BC Confidentiality Extension**
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 2000-01-01 --> 2020-01-01
* code: restricted
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Cease

**BC Valid Period Extension**: 2012-12-07 --> (ongoing)

**BC Birth Place Extension**: Ottawa ON CA 

**BC End Reason Extension**: Change

**identifier**: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147433.BC.PRS (, period: 2000-01-01 --> (ongoing))

**name**: GivenName FamilyName 

**telecom**: ph: 2502222234, [bob@email.com](mailto:bob@email.com)

**address**: 1000 DOUGLAS ST VICTORIA BC V6P7B8 CA 

**gender**: Male

**birthDate**: 1934-01-02



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "IPC.00147433.BC.PRS",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "statusCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system",
                "code" : "INACTIVE"
              }
            ]
          }
        },
        {
          "url" : "statusReasonCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system",
                "code" : "LTP"
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
                "code" : "LIC"
              }
            ]
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
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
                "code" : "CHG"
              }
            ]
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
    },
    {
      "extension" : [
        {
          "url" : "identifier",
          "valueIdentifier" : {
            "value" : "DA-1"
          }
        },
        {
          "url" : "description",
          "valueString" : "Description"
        },
        {
          "url" : "archiveDate",
          "valueDateTime" : "2000-01-01"
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "1998-01-02"
          }
        },
        {
          "url" : "displayFlag",
          "valueBoolean" : false
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
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
    },
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
    },
    {
      "extension" : [
        {
          "url" : "identifier",
          "valueIdentifier" : {
            "system" : "http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-condition-id",
            "value" : "Condition-2"
          }
        },
        {
          "url" : "restriction",
          "valueBoolean" : false
        },
        {
          "url" : "restrictionText",
          "valueString" : "Restriction text"
        },
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-condition-type-code-system",
                "code" : "EXP"
              }
            ]
          }
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
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension"
    },
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "2000-01-01",
            "end" : "2020-01-01"
          }
        },
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
                "code" : "R"
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
                "code" : "CEASE"
              }
            ]
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2012-12-07"
      }
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-birthplace-extension",
      "valueAddress" : {
        "city" : "Ottawa",
        "state" : "ON",
        "country" : "CA"
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
  "identifier" : [
    {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
      "value" : "IPC.00147433.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  ],
  "name" : [
    {
      "extension" : [
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
      "use" : "usual",
      "family" : "FamilyName",
      "given" : ["GivenName"],
      "period" : {
        "start" : "2012-12-07"
      }
    }
  ],
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
    },
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
      "system" : "email",
      "value" : "bob@email.com",
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
  ],
  "gender" : "male",
  "birthDate" : "1934-01-02",
  "_birthDate" : {
    "extension" : [
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-birthtime-extension",
        "valueDateTime" : "1951-11-12T00:00:01-06:00"
      }
    ]
  }
}

```
