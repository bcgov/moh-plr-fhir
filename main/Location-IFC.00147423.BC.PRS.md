# Example-Location-For-Add-Response - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Location-For-Add-Response**

## Example Location: Example-Location-For-Add-Response

Profile: [BCLocation](StructureDefinition-bc-location.md)

**BC Facility Physical Address Extension**: 1000 DOUGLAS ST VICTORIA BC V6P7B8 CA 

> **BC Facility Details Extension**
* http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension: 2000-01-01 --> (ongoing)

> **BC Facility Health Service Area Extension**
> **url**[BC Facility Health Authority Area Extension](StructureDefinition-bc-facility-health-authority-extension.md)
**value**: Vancouver Island
> **url**[BC Facility Health Service Delivery Area Extension](StructureDefinition-bc-facility-health-service-delivery-area-extension.md)
**value**: South Vancouver Island
> **url**[BC Facility Local Health Area Extension](StructureDefinition-bc-facility-local-health-area-extension.md)
**value**: Greater Victoria**name**: Downtown Victoria/Vic West**code**: 4111
> **url**[BC Facility Community Health Service Area Extension](StructureDefinition-bc-facility-community-health-area-extension.md)
**name**: Downtown/VicWest**code**: 40701
> **url**[BC Facility Primary Care Network Extension](StructureDefinition-bc-facility-primary-care-network-extension.md)

**identifier**: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.00147423.BC.PRS (, period: 2000-01-01 --> (ongoing))

**name**: General Hospital

**alias**: Long name or alias or description

**telecom**: fax: 55555555551

**physicalType**: Building



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "IFC.00147423.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"]
  },
  "extension" : [{
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
      }],
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
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2000-01-01"
      }
    }],
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
  },
  {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-authority-extension",
      "valueString" : "Vancouver Island"
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-delivery-area-extension",
      "valueString" : "South Vancouver Island"
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-local-health-area-extension",
      "valueString" : "Greater Victoria"
    },
    {
      "extension" : [{
        "url" : "name",
        "valueString" : "Downtown Victoria/Vic West"
      },
      {
        "url" : "code",
        "valueIdentifier" : {
          "value" : "4111"
        }
      }],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-community-health-area-extension"
    },
    {
      "extension" : [{
        "url" : "name",
        "valueString" : "Downtown/VicWest"
      },
      {
        "url" : "code",
        "valueIdentifier" : {
          "value" : "40701"
        }
      }],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-primary-care-network-extension"
    }],
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension"
  }],
  "identifier" : [{
    "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
    "value" : "IFC.00147423.BC.PRS",
    "period" : {
      "start" : "2000-01-01"
    }
  }],
  "name" : "General Hospital",
  "_name" : {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2000-01-01"
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
    }],
    "system" : "fax",
    "value" : "55555555551",
    "period" : {
      "start" : "1982-03-04T00:00:00-07:00"
    }
  }],
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bu"
    }]
  }
}

```
