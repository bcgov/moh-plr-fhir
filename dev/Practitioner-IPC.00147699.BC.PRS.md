# Example-Practitioner-Response-test - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Practitioner-Response-test**

## Example Practitioner: Example-Practitioner-Response-test

Profile: [BCPractitioner](StructureDefinition-bc-practitioner.md)

**BC Valid Period Extension**: 2012-12-07 --> (ongoing)

**BC Owner Extension**: ?ngen-9?

**BC Birth Place Extension**: Ottawa ON CA 

**identifier**: [CaBcPlrIpc](NamingSystem-ca-bc-plr-ipc.md)/IPC.00147622.BC.PRS (, period: 2000-01-01 --> (ongoing)), [CaBcPlrCommonPartyNumber](NamingSystem-ca-bc-plr-common-party-number.md)/CPN.00147422.BC.PRS (, period: 2000-01-01 --> (ongoing)), [CaBcLicensePhysician](NamingSystem-ca-bc-license-physician.md)/123454 (, period: 2000-01-01 --> (ongoing))

**name**: GivenName FamilyName (Official)

**gender**: Male

**birthDate**: 1934-01-02



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "IPC.00147699.BC.PRS",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
    ]
  },
  "extension" : [
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
      "valuePeriod" : {
        "start" : "2012-12-07"
      }
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension",
      "valueIdentifier" : {
        "assigner" : {
          "display" : "MOH"
        }
      }
    },
    {
      "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-birthplace-extension",
      "valueAddress" : {
        "city" : "Ottawa",
        "state" : "ON",
        "country" : "CA"
      }
    }
  ],
  "identifier" : [
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
      "value" : "IPC.00147622.BC.PRS",
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
      "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-common-party-number",
      "value" : "CPN.00147422.BC.PRS",
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
      "system" : "https://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-license-physician",
      "value" : "123454",
      "period" : {
        "start" : "2000-01-01"
      }
    }
  ],
  "name" : [
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
      "use" : "official",
      "family" : "FamilyName",
      "given" : ["GivenName"],
      "period" : {
        "start" : "2012-12-07"
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
