# BC Owner Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Owner Extension**

## Extension: BC Owner Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:OwnerExtension |

Tracking the owner.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCAddress](StructureDefinition-bc-address.md), [Extension to represent Availability, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availability-extension.md), [BC Confidentiality Extension](StructureDefinition-bc-confidentiality-extension.md), [BCContactPoint](StructureDefinition-bc-contactPoint.md)... Show 23 more, [BC Facility Details Extension](StructureDefinition-bc-facility-details-extension.md), [BC Health Delivery Site sub-type Extension](StructureDefinition-bc-hds-subtype-extension.md), [BC Health Delivery Site Type Extension](StructureDefinition-bc-health-delivery-site-type-extension.md), [BCHumanName](StructureDefinition-bc-humanName.md), [BCIdentifier](StructureDefinition-bc-identifier.md), [BC License Status Extension](StructureDefinition-bc-license-status-extension.md), [BCLocation](StructureDefinition-bc-location.md), [BC Notes Extension](StructureDefinition-bc-note-extension.md), [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md), [Extension for the clinic business legal name.](StructureDefinition-bc-organization-clinic-legal-name-extension.md), [Extension to represent clinic Owners.](StructureDefinition-bc-organization-clinic-owner-extension.md), [Extension to represent the Clinic Ownership type.](StructureDefinition-bc-organization-clinic-ownership-type-extension.md), [Extension to represent the Clinic Payee number.](StructureDefinition-bc-organization-clinic-payee-number-extension.md), [Extension to represent the Clinic Service Delivery type.](StructureDefinition-bc-organization-clinic-service-delivery-type-extension.md), [Extension to represent the Clinic type.](StructureDefinition-bc-organization-clinic-type-extension.md), [Extension to indicate if the clinic is part of the Primary Care Initiative.](StructureDefinition-bc-organization-pci-extension.md), [BCOrganization](StructureDefinition-bc-organization.md), [BC Practitioner Conditions Extension](StructureDefinition-bc-practitioner-condition-extension.md), [BC Practitioner Disciplinary Actions Extension](StructureDefinition-bc-practitioner-disciplinary-action-extension.md), [BC Practitioner to Practitioner Relationship Extension](StructureDefinition-bc-practitioner-relationship-extension.md), [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md), [BCPractitioner](StructureDefinition-bc-practitioner.md) and [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)
* Examples for this Extension: [Bundle/Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md), [Bundle/Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md), [Bundle/Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md), [Bundle/Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md)... Show 39 more, [Bundle/Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md), [Bundle/Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md), [Bundle/Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md), [Bundle/Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md), [Bundle/Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md), [Bundle/Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md), [Bundle/Example-UpdateOrganization-Bundle-Response](Bundle-Example-UpdateOrganization-Bundle-Response.md), [Bundle/Example-UpdateOrganization-Bundle](Bundle-Example-UpdateOrganization-Bundle.md), [Bundle/Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md), [Bundle/Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md), [Kelowna Clinic](Organization-IPC.00147434.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147436.BC.PRS.md), [OrganizationAffiliation/RELN.132.PRS](OrganizationAffiliation-RELN.132.PRS.md), [OrganizationAffiliation/RELN.142.PRS](OrganizationAffiliation-RELN.142.PRS.md), [OrganizationAffiliation/RELN.181.PRS](OrganizationAffiliation-RELN.181.PRS.md), [OrganizationAffiliation/RELN.182.PRS](OrganizationAffiliation-RELN.182.PRS.md), [Parameters/Example-Request-Distribution-Organization](Parameters-Example-Request-Distribution-Organization.md), [Parameters/Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md), [Parameters/Example-Request-Update-Organization](Parameters-Example-Request-Update-Organization.md), [Parameters/Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md), [Parameters/Example-Response-Add-Organization](Parameters-Example-Response-Add-Organization.md), [Parameters/Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md), [Parameters/Example-Response-Update-Organization](Parameters-Example-Response-Update-Organization.md), [Parameters/Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md), [Practitioner/IPC.00147622.BC.PRS](Practitioner-IPC.00147622.BC.PRS.md), [Practitioner/IPC.00147699.BC.PRS](Practitioner-IPC.00147699.BC.PRS.md), [PractitionerRole/IPC.00147622.BC.PRS](PractitionerRole-IPC.00147622.BC.PRS.md), [PractitionerRole/IPC.00147699.BC.PRS](PractitionerRole-IPC.00147699.BC.PRS.md), [PractitionerRole/RELN.123.PRS](PractitionerRole-RELN.123.PRS.md), [PractitionerRole/RELN.12373.PRS](PractitionerRole-RELN.12373.PRS.md), [PractitionerRole/RELN.124.PRS](PractitionerRole-RELN.124.PRS.md), [PractitionerRole/RELN.126.PRS](PractitionerRole-RELN.126.PRS.md), [PractitionerRole/RELN.128.PRS](PractitionerRole-RELN.128.PRS.md), [PractitionerRole/RELN.130.PRS](PractitionerRole-RELN.130.PRS.md), [PractitionerRole/RELN.153.PRS](PractitionerRole-RELN.153.PRS.md), [PractitionerRole/RELN.173.PRS](PractitionerRole-RELN.173.PRS.md) and [PractitionerRole/RELN.193.PRS](PractitionerRole-RELN.193.PRS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-owner-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-owner-extension.csv), [Excel](StructureDefinition-bc-owner-extension.xlsx), [Schematron](StructureDefinition-bc-owner-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-owner-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension",
  "version" : "1.0.0",
  "name" : "OwnerExtension",
  "title" : "BC Owner Extension",
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
  "description" : "Tracking the owner.",
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
      "expression" : "Practitioner"
    },
    {
      "type" : "element",
      "expression" : "Practitioner.qualification"
    },
    {
      "type" : "element",
      "expression" : "Practitioner.communication"
    },
    {
      "type" : "element",
      "expression" : "PractitionerRole"
    },
    {
      "type" : "element",
      "expression" : "PractitionerRole.specialty"
    },
    {
      "type" : "element",
      "expression" : "OrganizationAffiliation"
    },
    {
      "type" : "element",
      "expression" : "Organization.name"
    },
    {
      "type" : "element",
      "expression" : "Organization"
    },
    {
      "type" : "element",
      "expression" : "Location.name"
    },
    {
      "type" : "element",
      "expression" : "Extension"
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
        "short" : "BC Owner Extension",
        "definition" : "Tracking the owner."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
