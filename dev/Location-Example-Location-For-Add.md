# Example-Location-For-Add - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Location-For-Add**

## Example Location: Example-Location-For-Add

Profile: [BCLocation](StructureDefinition-bc-location.md)

**BC Facility Physical Address Extension**: 1000 DOUGLAS ST VICTORIA BC V6P7B8 CA 

> **BC Facility Details Extension**
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 2000-01-01 --> (ongoing)

**identifier**: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.001474222.BC.PRS (, period: 2000-01-01 --> (ongoing))

**name**: General Hospital

**alias**: Long name or alias or description

**telecom**: fax: 55555555551

**address**: 1000 DOUGLAS ST VICTORIA BC V6P7B8 CA 

**physicalType**: Building



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Example-Location-For-Add",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
    ]
  },
  "extension" : [
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension",
      "valueAddress" : {
        "extension" : [
          {
            "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
                  "code" : "FC"
                }
              ]
            }
          }
        ],
        "type" : "physical",
        "line" : ["1000 DOUGLAS ST"],
        "city" : "VICTORIA",
        "state" : "BC",
        "postalCode" : "V6P7B8",
        "country" : "CA",
        "period" : {
          "start" : "2000-01-01"
        }
      }
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
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
    }
  ],
  "identifier" : [
    {
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
      "value" : "IFC.001474222.BC.PRS",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  ],
  "name" : "General Hospital",
  "_name" : {
    "extension" : [
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
        "valuePeriod" : {
          "start" : "2000-01-01"
        }
      }
    ]
  },
  "alias" : ["Long name or alias or description"],
  "telecom" : [
    {
      "extension" : [
        {
          "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
                "code" : "FC"
              }
            ]
          }
        }
      ],
      "system" : "fax",
      "value" : "55555555551",
      "period" : {
        "start" : "1982-03-04T00:00:00-07:00"
      }
    }
  ],
  "address" : {
    "extension" : [
      {
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
              "code" : "FC"
            }
          ]
        }
      }
    ],
    "type" : "physical",
    "line" : ["1000 DOUGLAS ST"],
    "city" : "VICTORIA",
    "state" : "BC",
    "postalCode" : "V6P7B8",
    "country" : "CA",
    "period" : {
      "start" : "2000-01-01"
    }
  },
  "physicalType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "bu"
      }
    ]
  }
}

```
