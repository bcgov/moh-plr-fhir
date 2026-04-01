# BCOrganization - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BCOrganization**

## Resource Profile: BCOrganization 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:BCOrganization |

 
General constraints on the Organization resource for use in the BC Provider Registry project. 

This profile sets the minimum expectations for an Organization resource that is being used in a transaction to create/update.

### Mandatory and Must Support Data Elements

This Organization profile has the following mandatory elements:

**Each Organization must have:**

1. a name, with optional:
1. Period Extension
1. End Reason Extension
1. Name Use Extension

**Each Organization must support:**

1. an identifier
1. whether the Organization is active or not
1. the type of Organization
1. an Address and Telecom info
1. the License Status Extension
1. the PrimaryCareDetails Extension
1. the ClinicPayeeNumber Extension
1. the Availability Extension
1. the Confidentiality Extension
1. the Notes Extension

### Examples

**Usages:**

* Use this Profile: [BCOrganizationBundle](StructureDefinition-bc-organization-bundle.md) and [BCPractitioner](StructureDefinition-bc-practitioner.md)
* Refer to this Profile: [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md), [BCPractitioner](StructureDefinition-bc-practitioner.md) and [BCRoleRelationships](StructureDefinition-bc-role-relationships.md)
* Examples for this Profile: [University of Calgary](Organization-Example-Credential-Granting-Institution.md), [Kelowna Clinic](Organization-Example-Organization-1.md), [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md), [CREDENTIAL_CREDENTIALGRANTINGINSTTXT](Organization-Example-Qualification-Organization.md)... Show 4 more, [Kelowna Clinic](Organization-IPC.00047422.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147434.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147436.BC.PRS.md) and [ABC Clinic](Organization-IPC.00147437.BC.PRS.md)
* CapabilityStatements using this Profile: [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-organization.csv), [Excel](StructureDefinition-bc-organization.xlsx), [Schematron](StructureDefinition-bc-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-organization",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization",
  "version" : "1.0.0",
  "name" : "BCOrganization",
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
  "description" : "General constraints on the Organization resource for use in the BC Provider Registry project.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization.extension:status",
      "path" : "Organization.extension",
      "sliceName" : "status",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:confidentiality",
      "path" : "Organization.extension",
      "sliceName" : "confidentiality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:note",
      "path" : "Organization.extension",
      "sliceName" : "note",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:primaryCareDetails",
      "path" : "Organization.extension",
      "sliceName" : "primaryCareDetails",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-primary-care-clinic-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:clinicPayeeNumber",
      "path" : "Organization.extension",
      "sliceName" : "clinicPayeeNumber",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-payee-number-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.extension:availability",
      "path" : "Organization.extension",
      "sliceName" : "availability",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availability-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-identifier"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "patternBoolean" : true,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-organization-role-value-set"
      }
    },
    {
      "id" : "Organization.type.extension:HDSType",
      "path" : "Organization.type.extension",
      "sliceName" : "HDSType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-health-delivery-site-type-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.name.extension",
      "path" : "Organization.name.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.name.extension:use",
      "path" : "Organization.name.extension",
      "sliceName" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.name.extension:period",
      "path" : "Organization.name.extension",
      "sliceName" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.name.extension:endReason",
      "path" : "Organization.name.extension",
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
      "id" : "Organization.name.extension:owner",
      "path" : "Organization.name.extension",
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
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-contactPoint"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
