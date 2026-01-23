# Example-Organization-PrimaryCare - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Organization-PrimaryCare**

## Example Organization: Example-Organization-PrimaryCare

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

> **Extension to represent the Clinic Payee number.**
* identifier: PRPTY.123.PRS
* payeeNumber: 123456
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 2023-01-02 --> (ongoing)

> **Extension to represent Availability, or hours of operation, for clinic, or other Profiles**
> **url**[identifier](https://simplifier.net/resolve?scope=hl7.fhir.ca.baseline@1.2.0&canonical=http://hl7.org/fhir/ca/baseline/identifier)
**value**: PRPTY.145.PRS**daysOfWeek**: mon**daysOfWeek**: wed**availableStartTime**: 09:00:00**availableEndTime**: 17:00:00
> **url**[Extension to represent the available Time, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availableTime-extension.md)
**daysOfWeek**: tue**allDay**: true
> **url**[Extension to represent the available Time, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availableTime-extension.md)

> **url**[BC Valid Period Extension](StructureDefinition-bc-period-extension.md)
**value**: 2023-01-02 --> (ongoing)

> **Extension for BC Organization to add Primary Care Clinic details****identifier**: PRPTY.987.PRS**clinicType**: Longitudinal Primary Care Practice**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension to represent the Clinic type.](StructureDefinition-bc-organization-clinic-type-extension.md)
**identifier**: PRPTY.963.PRS**ownershipType**: Other**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension to represent the Clinic Ownership type.](StructureDefinition-bc-organization-clinic-ownership-type-extension.md)
**identifier**: PRPTY.258.PRS**serviceDeliveryType**: Longitudinal**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension to represent the Clinic Service Delivery type.](StructureDefinition-bc-organization-clinic-service-delivery-type-extension.md)
**identifier**: PRPTY.852.PRS**pciFlag**: true**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension to indicate if the clinic is part of the Primary Care Initiative.](StructureDefinition-bc-organization-pci-extension.md)
**identifier**: PRPTY.741.PRS**clinicLegalName**: Kelowna Downtown Primary Care Clinic Org.**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension for the clinic business legal name.](StructureDefinition-bc-organization-clinic-legal-name-extension.md)
**identifier**: PRPTY.654.PRS**clinicOwner**: John Doe, Dc Singh, Interior Health Authority**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension to represent clinic Owners.](StructureDefinition-bc-organization-clinic-owner-extension.md)
**identifier**: PRPTY.156.PRS**clinicOwner**: Owner Two, Dc Singh, Interior Health Authority**BC Valid Period Extension**: 2023-01-02 --> (ongoing)
> **url**[Extension to represent clinic Owners.](StructureDefinition-bc-organization-clinic-owner-extension.md)

**identifier**: [CaBcPlrOrgId](NamingSystem-ca-bc-plr-org-id.md)/456789 (, period: 2021-12-01 --> (ongoing))

**active**: true

**type**: Organization

**name**: Kelowna PC Clinic

**alias**: Primary Care Clinic - Kelowna

**telecom**: ph: 2501112234

**address**: 1000 DOUGLAS ST Kelowna BC V6P7B8 CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Example-Organization-PrimaryCare",
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
    },
    {
      "extension" : [
        {
          "url" : "identifier",
          "valueIdentifier" : {
            "value" : "PRPTY.123.PRS"
          }
        },
        {
          "url" : "payeeNumber",
          "valueString" : "123456"
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "2023-01-02"
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-payee-number-extension"
    },
    {
      "extension" : [
        {
          "url" : "identifier",
          "valueIdentifier" : {
            "value" : "PRPTY.145.PRS"
          }
        },
        {
          "extension" : [
            {
              "url" : "daysOfWeek",
              "valueCode" : "mon"
            },
            {
              "url" : "daysOfWeek",
              "valueCode" : "wed"
            },
            {
              "url" : "availableStartTime",
              "valueTime" : "09:00:00"
            },
            {
              "url" : "availableEndTime",
              "valueTime" : "17:00:00"
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension"
        },
        {
          "extension" : [
            {
              "url" : "daysOfWeek",
              "valueCode" : "tue"
            },
            {
              "url" : "allDay",
              "valueBoolean" : true
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension"
        },
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
          "valuePeriod" : {
            "start" : "2023-01-02"
          }
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availability-extension"
    },
    {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.987.PRS"
              }
            },
            {
              "url" : "clinicType",
              "valueCodeableConcept" : {
                "text" : "Longitudinal Primary Care Practice"
              }
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-type-extension"
        },
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.963.PRS"
              }
            },
            {
              "url" : "ownershipType",
              "valueCodeableConcept" : {
                "text" : "Other"
              }
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension"
        },
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.258.PRS"
              }
            },
            {
              "url" : "serviceDeliveryType",
              "valueCodeableConcept" : {
                "text" : "Longitudinal"
              }
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-service-delivery-type-extension"
        },
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.852.PRS"
              }
            },
            {
              "url" : "pciFlag",
              "valueBoolean" : true
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension"
        },
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.741.PRS"
              }
            },
            {
              "url" : "clinicLegalName",
              "valueString" : "Kelowna Downtown Primary Care Clinic Org."
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-legal-name-extension"
        },
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.654.PRS"
              }
            },
            {
              "url" : "clinicOwner",
              "valueString" : "John Doe, Dc Singh, Interior Health Authority"
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-owner-extension"
        },
        {
          "extension" : [
            {
              "url" : "identifier",
              "valueIdentifier" : {
                "value" : "PRPTY.156.PRS"
              }
            },
            {
              "url" : "clinicOwner",
              "valueString" : "Owner Two, Dc Singh, Interior Health Authority"
            },
            {
              "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
              "valuePeriod" : {
                "start" : "2023-01-02"
              }
            }
          ],
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-owner-extension"
        }
      ],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-primary-care-clinic-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-org-id",
      "value" : "456789",
      "period" : {
        "start" : "2021-12-01"
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
  "name" : "Kelowna PC Clinic",
  "_name" : {
    "extension" : [
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension",
        "valueCode" : "official"
      },
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
        "valuePeriod" : {
          "start" : "2021-12-31T00:00:00-07:00"
        }
      }
    ]
  },
  "alias" : ["Primary Care Clinic - Kelowna"],
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
