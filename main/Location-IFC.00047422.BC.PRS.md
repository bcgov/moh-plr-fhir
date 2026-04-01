# Example-Atomic-Location - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Atomic-Location**

## Example Location: Example-Atomic-Location

Profile: [BCLocation](StructureDefinition-bc-location.md)

> **BC Facility Health Service Area Extension**
> **url**[BC Facility Health Authority Area Extension](StructureDefinition-bc-facility-health-authority-extension.md)
**value**: Interior
> **url**[BC Facility Health Service Delivery Area Extension](StructureDefinition-bc-facility-health-service-delivery-area-extension.md)
**value**: Interior Okanogan
> **url**[BC Facility Local Health Area Extension](StructureDefinition-bc-facility-local-health-area-extension.md)
**value**: Kelowna Area**code**: 3100**name**: Downtown Kelowna
> **url**[BC Facility Community Health Service Area Extension](StructureDefinition-bc-facility-community-health-area-extension.md)
**code**: 30801**name**: Kelowna
> **url**[BC Facility Primary Care Network Extension](StructureDefinition-bc-facility-primary-care-network-extension.md)

**identifier**: [CaBcPlrIfc](NamingSystem-ca-bc-plr-ifc.md)/IFC.00047422.BC.PRS (, period: 2000-01-01 --> (ongoing))

**name**: General Hospital

**telecom**: fax: 55555555551, fax: 55555555555, [ftp://someftp.com](ftp://someftp.com)

**address**: 1000 DOUGLAS ST Kelowna BC V6P7B8 CA 

**physicalType**: Building



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "IFC.00047422.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-authority-extension",
      "valueString" : "Interior"
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-delivery-area-extension",
      "valueString" : "Interior Okanogan"
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-local-health-area-extension",
      "valueString" : "Kelowna Area"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueIdentifier" : {
          "value" : "3100"
        }
      },
      {
        "url" : "name",
        "valueString" : "Downtown Kelowna"
      }],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-community-health-area-extension"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueIdentifier" : {
          "value" : "30801"
        }
      },
      {
        "url" : "name",
        "valueString" : "Kelowna"
      }],
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-primary-care-network-extension"
    }],
    "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension"
  }],
  "identifier" : [{
    "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc",
    "value" : "IFC.00047422.BC.PRS",
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
  "telecom" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
          "code" : "BC"
        }]
      }
    }],
    "system" : "fax",
    "value" : "55555555551",
    "period" : {
      "start" : "1982-03-04T00:00:00-07:00"
    }
  },
  {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
          "code" : "HC"
        }]
      }
    }],
    "system" : "fax",
    "value" : "55555555555",
    "period" : {
      "start" : "1981-04-04T00:00:00-07:00"
    }
  },
  {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
          "code" : "MC"
        }]
      }
    }],
    "system" : "url",
    "value" : "ftp://someftp.com",
    "period" : {
      "start" : "1991-01-01T00:00:00-07:00"
    }
  }],
  "address" : {
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system",
          "code" : "BC"
        }]
      }
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-address-validation-status-code-system",
          "code" : "V"
        }]
      }
    }],
    "type" : "postal",
    "line" : ["1000 DOUGLAS ST"],
    "city" : "Kelowna",
    "state" : "BC",
    "postalCode" : "V6P7B8",
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
