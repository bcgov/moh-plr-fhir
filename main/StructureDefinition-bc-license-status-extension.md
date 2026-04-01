# BC License Status Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC License Status Extension**

## Extension: BC License Status Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LicenseStatusExtension |

Tracking the status and changes to the status of a practitioner/organization license.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCOrganization](StructureDefinition-bc-organization.md) and [BCPractitioner](StructureDefinition-bc-practitioner.md)
* Examples for this Extension: [Bundle/Example-AddOrganization-Bundle](Bundle-Example-AddOrganization-Bundle.md), [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md)... Show 30 more, [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md), [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-Practitioner-Param-Response](Bundle-Example-GET-Practitioner-Param-Response.md), [Bundle/Example-GET-Practitioner-Response](Bundle-Example-GET-Practitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md), [Bundle/Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md), [Bundle/Example-UpdatePractitioner-LicenseStatus-Bundle](Bundle-Example-UpdatePractitioner-LicenseStatus-Bundle.md), [Kelowna Clinic](Organization-Example-Organization-1.md), [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md), [ABC Clinic](Organization-IPC.00147437.BC.PRS.md), [Parameters/Example-Request-Add-Organization](Parameters-Example-Request-Add-Organization.md), [Parameters/Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-License-Practitioner](Parameters-Example-Request-Update-License-Practitioner.md), [Parameters/Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [Practitioner/Example-AddPractitioner-Practitioner](Practitioner-Example-AddPractitioner-Practitioner.md), [Practitioner/IPC.00047422.BC.PRS](Practitioner-IPC.00047422.BC.PRS.md), [Practitioner/IPC.00147422.BC.PRS](Practitioner-IPC.00147422.BC.PRS.md), [Practitioner/IPC.00147433.BC.PRS](Practitioner-IPC.00147433.BC.PRS.md), [Practitioner/IPC.00147622.BC.PRS](Practitioner-IPC.00147622.BC.PRS.md), [Practitioner/IPC.00187833.BC.PRS](Practitioner-IPC.00187833.BC.PRS.md) and [Practitioner/IPC.00763481.BC.PRS](Practitioner-IPC.00763481.BC.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-license-status-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-license-status-extension.csv), [Excel](StructureDefinition-bc-license-status-extension.xlsx), [Schematron](StructureDefinition-bc-license-status-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-license-status-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension",
  "version" : "1.0.0",
  "name" : "LicenseStatusExtension",
  "title" : "BC License Status Extension",
  "status" : "active",
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Tracking the status and changes to the status of a practitioner/organization license.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Practitioner"
  },
  {
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC License Status Extension",
      "definition" : "Tracking the status and changes to the status of a practitioner/organization license."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 4
    },
    {
      "id" : "Extension.extension:statusCode",
      "path" : "Extension.extension",
      "sliceName" : "statusCode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:statusCode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:statusCode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "statusCode"
    },
    {
      "id" : "Extension.extension:statusCode.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-value-set"
      }
    },
    {
      "id" : "Extension.extension:statusReasonCode",
      "path" : "Extension.extension",
      "sliceName" : "statusReasonCode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:statusReasonCode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:statusReasonCode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "statusReasonCode"
    },
    {
      "id" : "Extension.extension:statusReasonCode.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-reason-value-set"
      }
    },
    {
      "id" : "Extension.extension:statusClassCode",
      "path" : "Extension.extension",
      "sliceName" : "statusClassCode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:statusClassCode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:statusClassCode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "statusClassCode"
    },
    {
      "id" : "Extension.extension:statusClassCode.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "AE | LIC",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-class-value-set"
      }
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:period.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:period.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "period"
    },
    {
      "id" : "Extension.extension:period.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:endReason",
      "path" : "Extension.extension",
      "sliceName" : "endReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:owner",
      "path" : "Extension.extension",
      "sliceName" : "owner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
