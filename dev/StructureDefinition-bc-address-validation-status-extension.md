# BC Address Validation Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Address Validation Extension**

## Extension: BC Address Validation Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:AddressValidationStatusExtension |

BC extension for address validation status codes.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCAddress](StructureDefinition-bc-address.md)
* Examples for this Extension: [Bundle/Example-AddOrganization-Bundle](Bundle-Example-AddOrganization-Bundle.md), [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md)... Show 34 more, [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md), [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md), [Bundle/Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-Location-Response](Bundle-Example-GET-Location-Response.md), [Bundle/Example-GET-Organization-Response](Bundle-Example-GET-Organization-Response.md), [Bundle/Example-GET-Practitioner-Param-Response](Bundle-Example-GET-Practitioner-Param-Response.md), [Bundle/Example-GET-Practitioner-Response](Bundle-Example-GET-Practitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md), [Bundle/Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdateOrganization-Bundle-Response](Bundle-Example-UpdateOrganization-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [General Hospital](Location-IFC.00047422.BC.PRS.md), [Kelowna Clinic](Organization-Example-Organization-1.md), [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md), [Kelowna Clinic](Organization-IPC.00047422.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147436.BC.PRS.md), [ABC Clinic](Organization-IPC.00147437.BC.PRS.md), [Parameters/Example-Request-Add-Organization](Parameters-Example-Request-Add-Organization.md), [Parameters/Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md), [Parameters/Example-Request-Distribution-Organization](Parameters-Example-Request-Distribution-Organization.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Response-Add-Organization](Parameters-Example-Response-Add-Organization.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Organization](Parameters-Example-Response-Update-Organization.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [Practitioner/Example-AddPractitioner-Practitioner](Practitioner-Example-AddPractitioner-Practitioner.md), [Practitioner/IPC.00047422.BC.PRS](Practitioner-IPC.00047422.BC.PRS.md), [Practitioner/IPC.00147422.BC.PRS](Practitioner-IPC.00147422.BC.PRS.md), [Practitioner/IPC.00147622.BC.PRS](Practitioner-IPC.00147622.BC.PRS.md) and [Practitioner/IPC.00187833.BC.PRS](Practitioner-IPC.00187833.BC.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-address-validation-status-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-address-validation-status-extension.csv), [Excel](StructureDefinition-bc-address-validation-status-extension.xlsx), [Schematron](StructureDefinition-bc-address-validation-status-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-address-validation-status-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension",
  "version" : "1.0.0",
  "name" : "AddressValidationStatusExtension",
  "title" : "BC Address Validation Extension",
  "status" : "active",
  "date" : "2026-01-23T00:06:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [
    {
      "name" : "BC Ministry of Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
        }
      ]
    }
  ],
  "description" : "BC extension for address validation status codes.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA",
          "display" : "Canada"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Address"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BC Address Validation Extension",
        "definition" : "BC extension for address validation status codes."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-address-validation-status-value-set"
        }
      }
    ]
  }
}

```
