# Example-Atomic-Practitioner - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Atomic-Practitioner**

## Example Practitioner: Example-Atomic-Practitioner



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "IPC.00047422.BC.PRS",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Organization",
      "id" : "grantingInstitution",
      "meta" : {
        "profile" : [
          "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
        ]
      },
      "name" : "University of Calgary",
      "address" : [
        {
          "city" : "CALGARY",
          "state" : "AB",
          "country" : "CA"
        }
      ]
    }
  ],
  "extension" : [
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
      "extension" : [
        {
          "url" : "statusCode",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system",
                "code" : "SUSPENDED"
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
          "url" : "identifier",
          "valueIdentifier" : {
            "system" : "http://hlth.gov.bc.ca/fhir/provider/identifier-system/bc-condition-id",
            "value" : "Condition-1"
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
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"
    },
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "2022-06-30"
          }
        },
        {
          "url" : "targetPractitioner",
          "valueReference" : {
            "identifier" : {
              "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
              "value" : "IPC.00763483.BC.PRS",
              "period" : {
                "start" : "2000-01-01"
              }
            }
          }
        },
        {
          "url" : "relationshipType",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system",
                "code" : "WORKSAT"
              }
            ]
          }
        },
        {
          "url" : "logicalId",
          "valueString" : "987654"
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension"
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
  "name" : [
    {
      "use" : "official",
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
  },
  "qualification" : [
    {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "designation",
              "valueString" : "Designation"
            },
            {
              "url" : "equivalencyFlag",
              "valueBoolean" : false
            },
            {
              "url" : "registrationNumber",
              "valueString" : "Registration No."
            },
            {
              "url" : "issuedDate",
              "valueDateTime" : "2000-02-03"
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-qualification-extension"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scpqual",
            "code" : "BD"
          }
        ]
      },
      "period" : {
        "start" : "2000-01-01"
      },
      "issuer" : {
        "reference" : "#grantingInstitution"
      }
    }
  ],
  "communication" : [
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "2000-01-01"
          }
        }
      ],
      "coding" : [
        {
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-language-code-system",
          "code" : "B01"
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "2000-01-01"
          }
        }
      ],
      "coding" : [
        {
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-language-code-system",
          "code" : "F16"
        }
      ]
    }
  ]
}

```
