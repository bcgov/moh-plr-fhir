# BC Valid Period Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Valid Period Extension**

## Extension: BC Valid Period Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:PeriodExtension |

The period for when the extended element is valid.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Extension to represent Availability, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availability-extension.md), [BC Confidentiality Extension](StructureDefinition-bc-confidentiality-extension.md), [BC Facility Details Extension](StructureDefinition-bc-facility-details-extension.md), [BC Health Delivery Site sub-type Extension](StructureDefinition-bc-hds-subtype-extension.md)... Show 16 more, [BC Health Delivery Site Type Extension](StructureDefinition-bc-health-delivery-site-type-extension.md), [BCLocation](StructureDefinition-bc-location.md), [BC Notes Extension](StructureDefinition-bc-note-extension.md), [Extension for the clinic business legal name.](StructureDefinition-bc-organization-clinic-legal-name-extension.md), [Extension to represent clinic Owners.](StructureDefinition-bc-organization-clinic-owner-extension.md), [Extension to represent the Clinic Ownership type.](StructureDefinition-bc-organization-clinic-ownership-type-extension.md), [Extension to represent the Clinic Payee number.](StructureDefinition-bc-organization-clinic-payee-number-extension.md), [Extension to represent the Clinic Service Delivery type.](StructureDefinition-bc-organization-clinic-service-delivery-type-extension.md), [Extension to represent the Clinic type.](StructureDefinition-bc-organization-clinic-type-extension.md), [Extension to indicate if the clinic is part of the Primary Care Initiative.](StructureDefinition-bc-organization-pci-extension.md), [BCOrganization](StructureDefinition-bc-organization.md), [BC Practitioner Conditions Extension](StructureDefinition-bc-practitioner-condition-extension.md), [BC Practitioner Disciplinary Actions Extension](StructureDefinition-bc-practitioner-disciplinary-action-extension.md), [BC Practitioner to Practitioner Relationship Extension](StructureDefinition-bc-practitioner-relationship-extension.md), [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md) and [BCPractitioner](StructureDefinition-bc-practitioner.md)
* Examples for this Extension: [Bundle/Example-AddLocation-Bundle](Bundle-Example-AddLocation-Bundle.md), [Bundle/Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md), [Bundle/Example-AddLocationWithLinks-Bundle](Bundle-Example-AddLocationWithLinks-Bundle.md), [Bundle/Example-AddOrganization-Bundle](Bundle-Example-AddOrganization-Bundle.md)... Show 46 more, [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md), [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md), [Bundle/Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-GET-Location-Response](Bundle-Example-GET-Location-Response.md), [Bundle/Example-GET-Organization-Response](Bundle-Example-GET-Organization-Response.md), [Bundle/Example-GET-Practitioner-Param-Response](Bundle-Example-GET-Practitioner-Param-Response.md), [Bundle/Example-GET-Practitioner-Response](Bundle-Example-GET-Practitioner-Response.md), [Bundle/Example-GET-PractitionerRole-byPractitioner-Response](Bundle-Example-GET-PractitionerRole-byPractitioner-Response.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md), [Bundle/Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdateLocationWithLinks-Bundle](Bundle-Example-UpdateLocationWithLinks-Bundle.md), [Bundle/Example-UpdateOrganization-Bundle-Response](Bundle-Example-UpdateOrganization-Bundle-Response.md), [Bundle/Example-UpdateOrganization-Bundle](Bundle-Example-UpdateOrganization-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md), [General Hospital](Location-Example-Location-For-Add.md), [General Hospital](Location-IFC.00047422.BC.PRS.md), [General Hospital](Location-IFC.00147422.BC.PRS.md), [General Hospital](Location-IFC.00147423.BC.PRS.md), [Kelowna Clinic](Organization-Example-Organization-1.md), [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md), [Kelowna Clinic](Organization-IPC.00047422.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147434.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147436.BC.PRS.md), [ABC Clinic](Organization-IPC.00147437.BC.PRS.md), [Parameters/Example-Request-Add-Location](Parameters-Example-Request-Add-Location.md), [Parameters/Example-Request-Add-Organization](Parameters-Example-Request-Add-Organization.md), [Parameters/Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md), [Parameters/Example-Request-Distribution-Organization](Parameters-Example-Request-Distribution-Organization.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-Location](Parameters-Example-Request-Update-Location.md), [Parameters/Example-Request-Update-Organization](Parameters-Example-Request-Update-Organization.md), [Parameters/Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md), [Parameters/Example-Response-Add-Location](Parameters-Example-Response-Add-Location.md), [Parameters/Example-Response-Add-Organization](Parameters-Example-Response-Add-Organization.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Organization](Parameters-Example-Response-Update-Organization.md) and [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-period-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-period-extension.csv), [Excel](StructureDefinition-bc-period-extension.xlsx), [Schematron](StructureDefinition-bc-period-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-period-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension",
  "version" : "1.0.0",
  "name" : "PeriodExtension",
  "title" : "BC Valid Period Extension",
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
  "description" : "The period for when the extended element is valid.",
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
    "expression" : "Identifier"
  },
  {
    "type" : "element",
    "expression" : "ContactPoint"
  },
  {
    "type" : "element",
    "expression" : "Address"
  },
  {
    "type" : "element",
    "expression" : "HumanName"
  },
  {
    "type" : "element",
    "expression" : "Extension"
  },
  {
    "type" : "element",
    "expression" : "Practitioner"
  },
  {
    "type" : "element",
    "expression" : "Practitioner.communication"
  },
  {
    "type" : "element",
    "expression" : "PractitionerRole.specialty"
  },
  {
    "type" : "element",
    "expression" : "Location.name"
  },
  {
    "type" : "element",
    "expression" : "Organization.name"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "BC Valid Period Extension",
      "definition" : "The period for when the extended element is valid."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    }]
  }
}

```
