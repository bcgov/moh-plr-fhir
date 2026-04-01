# Example-PractitionerRole-Role-FromPrac-CPSID - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-PractitionerRole-Role-FromPrac-CPSID**

## Example PractitionerRole: Example-PractitionerRole-Role-FromPrac-CPSID

Profile: [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md)

**practitioner**: Identifier: [CaBcLicensePhysician](NamingSystem-ca-bc-license-physician.md)/123454 (, period: 2000-01-01 --> (ongoing))

**code**: MD

**specialty**: AMD53



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "Example-PractitionerRole-Role-FromPrac-CPSID",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"]
  },
  "practitioner" : {
    "identifier" : {
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-license-physician",
      "value" : "123454",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  },
  "code" : [{
    "coding" : [{
      "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scptype",
      "code" : "MD"
    }]
  }],
  "specialty" : [{
    "extension" : [{
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2000-01-01",
        "end" : "2020-01-01"
      }
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension",
      "valueString" : "Expertise source"
    }],
    "coding" : [{
      "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scpqual",
      "code" : "AMD53"
    }]
  }]
}

```
