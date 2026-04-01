# Example-Location-For-Update - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Location-For-Update**

## Example Location: Example-Location-For-Update

Profile: [BCLocation](StructureDefinition-bc-location.md)

> **BC Facility Details Extension**
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 2008-01-01 --> (ongoing)
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension: Change

**BC Facility Physical Address Extension**: 1000 DOUGLAS ST VICTORIA BC V6P7B8 CA 

**identifier**: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.00147422.BC.PRS (, period: 2008-01-01 --> (ongoing))

**name**: General Hospital

**alias**: Long name or alias or description

**telecom**: fax: 55555555551

**address**: 1000 DOUGLAS ST LANGFORD BC CA 

**physicalType**: Building



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "IFC.00147422.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2008-01-01"
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
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
  },
  {
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension",
    "valueAddress" : {
      "extension" : [{
        "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
            "code" : "FC"
          }]
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
      "type" : "physical",
      "line" : ["1000 DOUGLAS ST"],
      "city" : "VICTORIA",
      "state" : "BC",
      "postalCode" : "V6P7B8",
      "country" : "CA",
      "period" : {
        "start" : "2008-01-01"
      }
    }
  }],
  "identifier" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system",
          "code" : "CHG"
        }]
      }
    }],
    "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
    "value" : "IFC.00147422.BC.PRS",
    "period" : {
      "start" : "2008-01-01"
    }
  }],
  "name" : "General Hospital",
  "_name" : {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2000-01-01"
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
    }]
  },
  "alias" : ["Long name or alias or description"],
  "telecom" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
          "code" : "FC"
        }]
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
    "system" : "fax",
    "value" : "55555555551",
    "period" : {
      "start" : "1982-03-04T00:00:00-07:00"
    }
  }],
  "address" : {
    "line" : ["1000 DOUGLAS ST"],
    "city" : "LANGFORD",
    "state" : "BC",
    "country" : "CA",
    "period" : {
      "start" : "2000-01-01"
    }
  },
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bu"
    }]
  }
}

```
