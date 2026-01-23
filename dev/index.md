# PLR Overview - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **PLR Overview**

## PLR Overview

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/ImplementationGuide/fhir.ca-bc.provider | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:BCProviderRegistry |

### PLR Application Overview

The Provider and Location Registry (PLR) is a centralized repository of core information about health service providers, e.g., physicians, nurses, pharmacists. Information is supplied by authorized sources such as professional colleges. PLR ensures the security of provider information by employing or enabling proven security and privacy techniques. Data in the repository is available to authorized organizations to facilitate the transmission of provider information between authorized organizations in real time. This makes PLR a cornerstone in the development of the Electronic Health Record (EHR).

PLR supports BC Health stakeholder needs for a comprehensive, trusted and reliable custodian and source of core health provider, location and facility information. PLR is the authoritative registry of British Columbia healthcare Providers’ demographic and professional information which supports activities such as:

* Patient referrals
* Informal consultations between care Providers
* Clinical document delivery
* Maintenance of internal Provider directories within the health sector

The PLR contains information for each Provider (e.g. personal demographics, College Identifier, Ministry Practitioner Identifier (MPID), license status, expertise, business contact, and work location) which is sourced from professional colleges and regulatory bodies such as the:

* BC College of Nursing Professionals (BCCNP)
* College of Dentists of BC (CDSBC)
* College of Midwives of BC (CMBC)
* College of Pharmacists of BC
* College of Physician and Surgeons of BC (CPSBC)
* College of Psychologists of BC
* College of Optometrists of BC

Any given point of service (PoS) can only access the Provider data fields that are included in the relevant information sharing agreements with the Ministry of Health. Specific data permissions are set within the PLR. A PoS application can use the PLR as the sole source of Provider information or to complement existing retained Provider information.

### Providers

A **Provider** is a person / individual or an organization acting in a role. The PLR uses the terms Individual Provider and Organizational Provider to distinguish between the two types. Examples:

* Persons / Individual Provider – Dr. Sara Scalpel in the role of medical doctor.
* Organizational Provider – Local Drug Mart #44 in the role of a Pharmacy.

The information recorded for Providers consists of unique identifiers, names, addresses, telecommunication numbers, electronic addresses, expertise, credentials, statuses, conditions, notes, relationships, disciplinary actions, and work locations. Information for Individual Providers also includes demographic details.

Figure 1.1 - BC PLR Provider
The relationships above are compositions, the children cannot exist without the parent(s). I.e. the Individual or Organization Provider cannot exist without a Party and Role. And each of the Facility-to-Provider or Provider-to-Provider relationships must be connected to existing Facilities or Providers.

### Facilities

A Facility is an identified, named place, piece of equipment, or amenity of interest to BC Health which is physical (e.g. a building or vehicle). It can be a a particular place or position which may be physically/spatially related. Facilities have names, and may have other communication mechanisms: mailing addresses, telephone numbers, etc. As well, multiple organizations can be related to a facility.

A Facility is a unique civic address in BC and may be:

* A single building (most frequent case).
* One of several assigned to very large buildings with multiple entrances (e.g. Vancouver General).

Examples: Long term care facility, Walk-in Clinic, Urgent Care Centre, Public Health Office, Hospitals, Ambulances, Pharmacies, Laboratory offices, Community Medical Imaging Clinics.

The PLR concept of a Providers Work Location will be promoted to an independent entity called Facility. Facilities are stand-alone objects that may be related to, and only to, providers through relationships.

This enables:

* Better Health Sector clinical document delivery, enhance location quality, and improve upon the PLR model by implementing Facility as a standalone concept.
* PLR to move toward the source of truth of Facility information for use by the Ministry’s analytics teams and Health Sector systems, where currently disparate silos of Facility information exist.

Figure 1.2 - BC PLR Facility
The above diagram outlines the different entities that compose a facility:

* Facility Details - owner, operator, effective dates
* Civic Address - civic address along with latitude/longitude and community health service area (CHSA) codes and code descriptions
* Facility Identifier - identifier(s) with identifier type
* Community Health Service Area - a health boundary within the Province of BC
* Primary Care netowrk - a health boundary within the Province of BC

### Relation to CA Baseline and other IGs

This Implementation Guide was written based on resource profiles from CA Baseline where available (Practitioner, Organization, and Location) and otherwise from FHIR R4 (OrganizationAffiliation and PractitionerRole). At this time this IG is conformant with the CA Baseline.

### Miscellaneous

#### PLR User Guide

The PLR User Guide provides a detailed overview of the current PLR functionality. Please contact the [registry administrator](mailto:HLTH.REGISTRIESADMIN@gov.bc.ca) to request a copy of the User Guide.

#### Identifiers and Naming Sytems

PLR Practitioner, Organization and Location resources can be identified by different identifiers, which can be created and maintain by various sources. To identify the origin of these various identifiers, the FHIR norm defines Naming Systems. Naming Systems are meant to replace OIDs, used in HL7 v3 messages. The mapping between OIDs and Namings systems used in PLR is listed in this [file](PLR-NamingSystems.pdf).

All the Naming Systems in PLR are registered in the [Canadian URI Registry](https://simplifier.net/canadianuriregistry/~resources?category=NamingSystem&sortBy=RankScore_desc) or in the [BC-core project](https://simplifier.net/bccore/~resources?category=NamingSystem&sortBy=RankScore_desc), depending of their scope (internal to BC or potential use across Canada)

In search queries, identifier and naming systems need to be used together as in following examples:

* Restful Search Request for an Practitioner by CPID - same pattern for Organization or Location
* EntitySearch Request for an Location by IFC - same pattern for Organization or Practitioner
* In FHIR resources, Naming systems are used like seen in the example below, Organization identifiers block, with IPC and CPN - same pattern for Location or Practitioner


  "identifier" : [ { "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc", "value" : "IPC.00047422.BC.PRS", "period" : { "start" : "2000-01-01" } }, 
 { "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-common-party-number", "value" : "CPN.00147433.BC.PRS", "period" : { "start" : "2000-01-01" } } ]

#### Conformance Requirements

Conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html#conflang).

#### Data Absent Reason

Data may be absent for various reasons. If data is absent the attribute will have a data absent reason extension indicating why data is missing. The entire attribute, e.g. BCHumanName may be absent or just part of it. In the examples below the name use is present but the rest of the name attribute is missing.

For example gender would be masked as follows.

```
"_gender" : {
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }
  ]
}

```

Below is an example for name.

```
"name" : [
  {
    "extension": [
      {
        "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode": "masked"
      }
    ],
    "use": "temp"
  }
]

```

#### Must Support

All of the PLR Profiles include elements that are marked as 'Must Support'. For the purposes of this guide, Must Support is intended to represent those fields that will be exchanged between client applications and the PLR server. Client applications who are receving PLR information SHALL be able to receive all fields marked as Must Support without raising an exception. When sending information to the PLR server, client applications SHOULD be able to send any fields marked as Must Support.

The privacy and security requried to handle PLR data is fully described in the conformance guides.



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "fhir.ca-bc.provider",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/ImplementationGuide/fhir.ca-bc.provider",
  "version" : "1.0.0",
  "name" : "BCProviderRegistry",
  "title" : "BC Provider Location Registry FHIR Implementation Guide",
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
  "description" : "FHIR Implementation Guide for BC MOH Provider Registry",
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
  "packageId" : "fhir.ca-bc.provider",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.1"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_ca_baseline",
      "uri" : "http://hl7.org/fhir/ca/baseline/ImplementationGuide/hl7.fhir.ca.baseline",
      "packageId" : "hl7.fhir.ca.baseline",
      "version" : "1.2.0"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2022+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "fhirVersion-4.0; BCPLRVersion=1"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-condition-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-hds-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-service-delivery-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-ownership-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-credential-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-owner-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-address-validation-status-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-practitioner-role-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-expertise-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-hds-subtype-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-identifier-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-organization-role-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-language-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-language-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-expertise-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-practitioner-role-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-organization-role-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-reason-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-qualification-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-class-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-address-validation-status-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-end-reason-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-relationship-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-communication-purpose-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-hds-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-location-identifier-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-location-relationship-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-condition-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-owner-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-error-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-pharmacist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-clinical-counsellor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-social-worker"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-family-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-naturopathic-physician"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-paramedic"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-org-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-common-party-number"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-acupuncturist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-podiatric-surgeon"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-dentist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-occupational-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-radiation-technologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-psychologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-out-of-province-provider"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-office-assistant"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-ministry-practitioner-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-pharmacy-technician"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-registered-pharmacy"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-physician"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-special-register-general"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-nurse"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-health-authority-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-ambulance-director"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-dietitian"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-msp-facility-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-chiropractor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-kinesiologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-ifc"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-massage-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-ipc"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-psychotherapy-counsellor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-optometrist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-physical-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-midwife"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-electroneurophysiology-technologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://hlth.gov.bc.ca/fhir/provider/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.9.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2022+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "fhirVersion-4.0; BCPLRVersion=1"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-condition-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-relationship-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-hds-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-service-delivery-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-ownership-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-clinic-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-credential-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-end-reason-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-owner-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-address-validation-status-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-practitioner-role-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-expertise-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-communication-purpose-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-relationship-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-hds-subtype-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-location-identifier-type-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-organization-role-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-language-code-system"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-language-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-expertise-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-practitioner-role-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-organization-role-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-reason-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-qualification-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-class-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-address-validation-status-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-end-reason-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-relationship-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-communication-purpose-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-hds-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-location-identifier-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-location-relationship-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-condition-type-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-owner-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-error-value-set"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-pharmacist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-clinical-counsellor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-social-worker"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-family-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-naturopathic-physician"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-paramedic"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-org-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-common-party-number"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-acupuncturist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-podiatric-surgeon"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-dentist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-occupational-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-radiation-technologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-psychologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-out-of-province-provider"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-office-assistant"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-ministry-practitioner-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-pharmacy-technician"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-registered-pharmacy"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-physician"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-special-register-general"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-nurse"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-health-authority-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-ambulance-director"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-dietitian"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-msp-facility-id"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-chiropractor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-kinesiologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-ifc"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-massage-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-plr-ipc"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-psychotherapy-counsellor"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-optometrist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-physical-therapist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-license-midwife"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "special-url"
          },
          {
            "url" : "value",
            "valueString" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/NamingSystem/ca-bc-electroneurophysiology-technologist"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://hlth.gov.bc.ca/fhir/provider/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "grouping" : [
      {
        "id" : "Capabilities",
        "name" : "Capabilities",
        "description" : "PLR Capability Statements"
      },
      {
        "id" : "Operations",
        "name" : "Operations",
        "description" : "Operation definitions"
      },
      {
        "id" : "OperationsRequestExamples",
        "name" : "Operations Request Examples",
        "description" : "Operation request examples"
      },
      {
        "id" : "OperationsResponseExamples",
        "name" : "Operations Response Examples",
        "description" : "Operation response examples"
      },
      {
        "id" : "Bundles",
        "name" : "Bundles",
        "description" : "Inbound Distribution/Maintain and Batch Bundles"
      },
      {
        "id" : "Practitioner",
        "name" : "Practitioner",
        "description" : "Artifacts associated with Practitioners"
      },
      {
        "id" : "Organization",
        "name" : "Organization",
        "description" : "Artifacts associated with Organizations"
      },
      {
        "id" : "Facility",
        "name" : "Facility",
        "description" : "Artifacts associated with Facilities"
      },
      {
        "id" : "RestfulQueryResponse",
        "name" : "RESTful Response Examples",
        "description" : "RESTful Query Response Examples"
      },
      {
        "id" : "Extensions",
        "name" : "Extensions",
        "description" : "Extensions used across all groupings"
      },
      {
        "id" : "Datatypes",
        "name" : "Datatypes",
        "description" : "Artifacts associated with datatypes"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-batch"
        },
        "name" : "Batch Maintain PLR entities.",
        "description" : "This operation is used to create and update multiple resources (Practitioner only for now)",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-address-validation-status-extension"
        },
        "name" : "BC Address Validation Extension",
        "description" : "BC extension for address validation status codes.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-address-validation-status-code-system"
        },
        "name" : "Bc Address Validation Status Codes",
        "description" : "Bc Address Validation Status Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-address-validation-status-value-set"
        },
        "name" : "BC Address Validation Status Value Set",
        "description" : "BC address validation status value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-birthplace-extension"
        },
        "name" : "BC Birth Place Extension",
        "description" : "Captures the place where a patient/practitioner/person was born.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-birthtime-extension"
        },
        "name" : "BC Birth Time Extension",
        "description" : "Adds birth time to the birth date.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-clinic-ownership-type-code-system"
        },
        "name" : "Bc Clinic Ownership Type Codes",
        "description" : "Bc Clinic Ownership Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-clinic-service-delivery-type-code-system"
        },
        "name" : "Bc Clinic Service Delivery Type Codes",
        "description" : "Bc Clinic Service Delivery Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-clinic-type-code-system"
        },
        "name" : "Bc Clinic Type Codes",
        "description" : "Bc Clinic Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-communication-purpose-code-system"
        },
        "name" : "Bc Communication Purpose Codes",
        "description" : "Bc Communication Purpose Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-communication-purpose-code-extension"
        },
        "name" : "BC Communication Purpose Extension",
        "description" : "BC extension for communication purpose codes.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-communication-purpose-value-set"
        },
        "name" : "BC Communication Purpose Value Set",
        "description" : "BC communication purpose value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-condition-type-code-system"
        },
        "name" : "Bc Condition Type Codes",
        "description" : "Bc Condition Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-condition-type-value-set"
        },
        "name" : "Bc Condition Type Value Set",
        "description" : "BC Condition Type Value Set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-confidentiality-extension"
        },
        "name" : "BC Confidentiality Extension",
        "description" : "Indicates the confidentiality of a BC provider's (practitioner or organization) information.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-credential-code-system"
        },
        "name" : "Bc Credential Codes",
        "description" : "Bc Credential Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-end-reason-code-system"
        },
        "name" : "Bc End Reason Codes",
        "description" : "Bc End Reason Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-end-reason-extension"
        },
        "name" : "BC End Reason Extension",
        "description" : "Tracking end reason.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-end-reason-value-set"
        },
        "name" : "BC End Reason Value Set",
        "description" : "BC end reason value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-error-code-system"
        },
        "name" : "Bc Error Codes",
        "description" : "Bc Error Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-error-value-set"
        },
        "name" : "Bc Error Value Set",
        "description" : "BC Error Value Set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-expertise-code-system"
        },
        "name" : "Bc Expertise Codes",
        "description" : "Bc Expertise Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-expertise-value-set"
        },
        "name" : "BC Expertise Value Set",
        "description" : "BC Expertise value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-community-health-area-extension"
        },
        "name" : "BC Facility Community Health Service Area Extension",
        "description" : "A code that represents the Community Health Service Area (CHSA) that the location is a part of.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-details-extension"
        },
        "name" : "BC Facility Details Extension",
        "description" : "Provides the details of a facility as represented by a FHIR location.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-health-authority-extension"
        },
        "name" : "BC Facility Health Authority Area Extension",
        "description" : "A code that represents the health authority area that the location is a part of.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-health-service-area-extension"
        },
        "name" : "BC Facility Health Service Area Extension",
        "description" : "A wrapper extension that will allow to list all the health service area, including the PCN and the Community Health Service Area.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-health-service-delivery-area-extension"
        },
        "name" : "BC Facility Health Service Delivery Area Extension",
        "description" : "A code that represents the Health Service Delivery Area (HSDA) that the location is a part of.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-local-health-area-extension"
        },
        "name" : "BC Facility Local Health Area Extension",
        "description" : "A code that represents the Local Health Area (LHA) that the location is a part of.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-physical-address-extension"
        },
        "name" : "BC Facility Physical Address Extension",
        "description" : "An optional physical address for the facility.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-facility-primary-care-network-extension"
        },
        "name" : "BC Facility Primary Care Network Extension",
        "description" : "A code that represents the Primary Care Network (PCN) that the location is a part of.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-hds-subtype-code-system"
        },
        "name" : "Bc Hds Subtype Codes",
        "description" : "Bc Hds Subtype Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-hds-type-code-system"
        },
        "name" : "Bc Hds Type Codes",
        "description" : "Bc Hds Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-hds-subtype-extension"
        },
        "name" : "BC Health Delivery Site sub-type Extension",
        "description" : "Uses to define HDS sub type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-health-delivery-site-type-extension"
        },
        "name" : "BC Health Delivery Site Type Extension",
        "description" : "Uses to define HDS Type and HDS sub type",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-hds-type-value-set"
        },
        "name" : "BC Health Delivery Site Type Value Set",
        "description" : "BC Health Delivery Site Type Value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-language-code-system"
        },
        "name" : "Bc Language Codes",
        "description" : "Bc Language Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-language-value-set"
        },
        "name" : "BC Language Value Set",
        "description" : "BC Language value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-license-status-class-code-system"
        },
        "name" : "Bc License Status Class Codes",
        "description" : "Bc License Status Class Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-license-status-class-value-set"
        },
        "name" : "BC License Status Class Value Set",
        "description" : "BC specific license status class value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-license-status-code-system"
        },
        "name" : "Bc License Status Codes",
        "description" : "Bc License Status Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-license-status-extension"
        },
        "name" : "BC License Status Extension",
        "description" : "Tracking the status and changes to the status of a practitioner/organization license.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-license-status-reason-code-system"
        },
        "name" : "Bc License Status Reason Codes",
        "description" : "Bc License Status Reason Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-license-status-reason-value-set"
        },
        "name" : "BC License Status Reason Value Set",
        "description" : "BC specific license status reason value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-license-status-value-set"
        },
        "name" : "BC License Status Value Set",
        "description" : "BC specific license status value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-location-identifier-type-code-system"
        },
        "name" : "Bc Location Identifier Type Codes",
        "description" : "Bc Location Identifier Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-location-identifier-type-value-set"
        },
        "name" : "Bc Location Identifier Type Value Set",
        "description" : "BC Location Identifier Type Value Set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-location-relationship-type-code-system"
        },
        "name" : "Bc Location Relationship Type Codes",
        "description" : "Bc Location Relationship Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-location-relationship-type-value-set"
        },
        "name" : "Bc Location Relationship Type Value Set",
        "description" : "BC Location Relationship Type Value Set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-name-use-extension"
        },
        "name" : "BC Name Use Extension",
        "description" : "Allows for use on a simple name string.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-note-extension"
        },
        "name" : "BC Notes Extension",
        "description" : "Notes about the practitioner/location/organization.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-organization-role-value-set"
        },
        "name" : "BC Organization Role Code Value Set",
        "description" : "BC Organization Role Codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-organization-role-code-system"
        },
        "name" : "Bc Organization Role Codes",
        "description" : "Bc Organization Role Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-owner-code-system"
        },
        "name" : "Bc Owner Codes",
        "description" : "Bc Owner Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-owner-extension"
        },
        "name" : "BC Owner Extension",
        "description" : "Tracking the owner.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-owner-value-set"
        },
        "name" : "Bc Owner Value Set",
        "description" : "BC Owner Value Set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/bc-plr-client-capability-statement"
        },
        "name" : "BC PLR Client Capability Statement",
        "description" : "This capability statement describes the use case that is supported by the BC FHIR implementation of PLR.\n* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location",
        "exampleBoolean" : false,
        "groupingId" : "Capabilities"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CapabilityStatement"
          }
        ],
        "reference" : {
          "reference" : "CapabilityStatement/bc-plr-server-capability-statement"
        },
        "name" : "BC PLR Server Capability Statement",
        "description" : "This capability statement is listing the RESTful resources that are exposed as well as the three use cases that are supported by the BC FHIR implementation of PLR (see json or XML for more details):\n* Maintain - used when an external source is communicating a change to PLR\n* Batch - allows for the sending of multiple Maintain transactions at one time (not implemented yet)\n* Queries - a set of operations are defined that allow the querying of PLR FHIR instances (entityQuery and extendedQuery)\n\nAll POST and PUT Requests are sent using a Paramaters resource and the Response is always a Bundle resource containing an OperationOutcome and the expected profile(s) (BCPractitioner, BCPractitionerBundle ect ...)",
        "exampleBoolean" : false,
        "groupingId" : "Capabilities"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-condition-extension"
        },
        "name" : "BC Practitioner Conditions Extension",
        "description" : "Conditions on the provider's role",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-deathdate-extension"
        },
        "name" : "BC Practitioner Date of Death Extension",
        "description" : "The Date of Death of a Practitioner.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-disciplinary-action-extension"
        },
        "name" : "BC Practitioner Disciplinary Actions Extension",
        "description" : "Provides details of disciplinary actions against the provider.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-qualification-extension"
        },
        "name" : "BC Practitioner Qualification Extension",
        "description" : "The qualifications extensions.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-qualification-value-set"
        },
        "name" : "BC Practitioner Qualification Value Set",
        "description" : "BC specific qualification value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-practitioner-role-value-set"
        },
        "name" : "BC Practitioner Role Code Value Set",
        "description" : "BC Practitioner Role Codes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-practitioner-role-code-system"
        },
        "name" : "Bc Practitioner Role Codes",
        "description" : "Bc Practitioner Role Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-location-relationship-type-extension"
        },
        "name" : "BC Practitioner to Location Type Extension.",
        "description" : "The relationship type of a Practitioner to Location relationship.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-relationship-type-extension"
        },
        "name" : "BC Practitioner to Organization or Practitioner to Practitioner Type Extension.",
        "description" : "The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-relationship-extension"
        },
        "name" : "BC Practitioner to Practitioner Relationship Extension",
        "description" : "Allows for relationships of practitioners to practitioners without needing CareTeam semantics.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/bc-relationship-type-code-system"
        },
        "name" : "Bc Relationship Type Codes",
        "description" : "Bc Relationship Type Code System",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/bc-relationship-type-value-set"
        },
        "name" : "BC Relationship Type Value Set",
        "description" : "BC relationship type value set.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-specialty-source-extension"
        },
        "name" : "BC Specialty Source Extension",
        "description" : "The specialty source.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-period-extension"
        },
        "name" : "BC Valid Period Extension",
        "description" : "The period for when the extended element is valid.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-address"
        },
        "name" : "BCAddress",
        "description" : "Adds an end reason, communication purpose and validation status to the address.",
        "exampleBoolean" : false,
        "groupingId" : "Datatypes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-batch-bundle"
        },
        "name" : "BCBatchBundle",
        "description" : "A Bundle that is used in the PLR Batch operation.",
        "exampleBoolean" : false,
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-batch-response-bundle"
        },
        "name" : "BCBatchReponseBundle",
        "description" : "A Bundle that is used in the PLR Batch operation.",
        "exampleBoolean" : false,
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-contactPoint"
        },
        "name" : "BCContactPoint",
        "description" : "Adds an end reason and extra contact information.",
        "exampleBoolean" : false,
        "groupingId" : "Datatypes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-humanName"
        },
        "name" : "BCHumanName",
        "description" : "Adds an end reason and a use code to a name.",
        "exampleBoolean" : false,
        "groupingId" : "Datatypes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:complex-type"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-identifier"
        },
        "name" : "BCIdentifier",
        "description" : "Adds an end reason to the identifier.",
        "exampleBoolean" : false,
        "groupingId" : "Datatypes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-location"
        },
        "name" : "BCLocation",
        "description" : "General constraints on the Location resource for use in the BC Provider Registry project.",
        "exampleBoolean" : false,
        "groupingId" : "Facility"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-location-bundle"
        },
        "name" : "BCLocationBundle",
        "description" : "A bundle that submits Location information.",
        "exampleBoolean" : false,
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-operation-outcome"
        },
        "name" : "BCOperationOutcome",
        "description" : "OperationOutcome for BC.",
        "exampleBoolean" : false,
        "groupingId" : "Extensions"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization"
        },
        "name" : "BCOrganization",
        "description" : "General constraints on the Organization resource for use in the BC Provider Registry project.",
        "exampleBoolean" : false,
        "groupingId" : "Organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-affiliation"
        },
        "name" : "BCOrganizationAffiliation",
        "description" : "General constraints on the OrganizationAffiliation resource for use in the BC Provider Registry project.",
        "exampleBoolean" : false,
        "groupingId" : "Organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-bundle"
        },
        "name" : "BCOrganizationBundle",
        "description" : "A bundle that submits Organization and OrganizationAffiliation information.",
        "exampleBoolean" : false,
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner"
        },
        "name" : "BCPractitioner",
        "description" : "General constraints on the Practitioner resource for use in the BC Provider Registry project.",
        "exampleBoolean" : false,
        "groupingId" : "Practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-bundle"
        },
        "name" : "BCPractitionerBundle",
        "description" : "A bundle that submits Practitioner and PractitionerRole information.",
        "exampleBoolean" : false,
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-practitioner-role"
        },
        "name" : "BCPractitionerRole",
        "description" : "General constraints on the PractitionerRole resource for use in the BC Provider Registry project.",
        "exampleBoolean" : false,
        "groupingId" : "Practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-role-relationships"
        },
        "name" : "BCRoleRelationships",
        "description" : "General constraints on the PractitionerRole resource for use in the BC Provider Registry project to describe relationships.",
        "exampleBoolean" : false,
        "groupingId" : "Practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-ambulance-director"
        },
        "name" : "Ca Bc Ambulance Director Naming System",
        "description" : "Ambulance Operator Medical Director ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-electroneurophysiology-technologist"
        },
        "name" : "Ca Bc Electroneurophysiology Technologist Naming System",
        "description" : "Electroneurophysiology Technologist Identifier",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-health-authority-id"
        },
        "name" : "Ca Bc Health Authority Id Naming System",
        "description" : "Health Authority ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-acupuncturist"
        },
        "name" : "Ca Bc License Acupuncturist Naming System",
        "description" : "Registered Acupuncturist ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-chiropractor"
        },
        "name" : "Ca Bc License Chiropractor Naming System",
        "description" : "CHIROID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-clinical-counsellor"
        },
        "name" : "Ca Bc License Clinical Counsellor Naming System",
        "description" : "BC Association of Clinical Counsellors ID#",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-dentist"
        },
        "name" : "Ca Bc License Dentist Naming System",
        "description" : "Dentist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-dietitian"
        },
        "name" : "Ca Bc License Dietitian Naming System",
        "description" : "Registered Dietitian ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-family-therapist"
        },
        "name" : "Ca Bc License Family Therapist Naming System",
        "description" : "Marriage and Family Therapists ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-kinesiologist"
        },
        "name" : "Ca Bc License Kinesiologist Naming System",
        "description" : "Kinesiologist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-massage-therapist"
        },
        "name" : "Ca Bc License Massage Therapist Naming System",
        "description" : "Registered Massage Therapist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-midwife"
        },
        "name" : "Ca Bc License Midwife Naming System",
        "description" : "Registered Midwife ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-naturopathic-physician"
        },
        "name" : "Ca Bc License Naturopathic Physician Naming System",
        "description" : "Naturopathic Doctor ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-nurse"
        },
        "name" : "Ca Bc License Nurse Naming System",
        "description" : "Registered Nurse ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-occupational-therapist"
        },
        "name" : "Ca Bc License Occupational Therapist Naming System",
        "description" : "Occupational Therapist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-optometrist"
        },
        "name" : "Ca Bc License Optometrist Naming System",
        "description" : "Optometrist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-pharmacist"
        },
        "name" : "Ca Bc License Pharmacist Naming System",
        "description" : "Pharmacist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-pharmacy-technician"
        },
        "name" : "Ca Bc License Pharmacy Technician Naming System",
        "description" : "Pharmacy Technician ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-physical-therapist"
        },
        "name" : "Ca Bc License Physical Therapist Naming System",
        "description" : "Physiotherapist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-physician"
        },
        "name" : "Ca Bc License Physician Naming System",
        "description" : "Physician ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-podiatric-surgeon"
        },
        "name" : "Ca Bc License Podiatric Surgeon Naming System",
        "description" : "Podiatrist ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-psychologist"
        },
        "name" : "Ca Bc License Psychologist Naming System",
        "description" : "Psychologist ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-psychotherapy-counsellor"
        },
        "name" : "Ca Bc License Psychotherapy Counsellor Naming System",
        "description" : "Counsellor ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-license-social-worker"
        },
        "name" : "Ca Bc License Social Worker Naming System",
        "description" : "Social Worker ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-ministry-practitioner-id"
        },
        "name" : "Ca Bc Ministry Practitioner Id Naming System",
        "description" : "Ministry Practitioner ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-msp-facility-id"
        },
        "name" : "Ca Bc Msp Facility Id Naming System",
        "description" : "MSP Facility Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-office-assistant"
        },
        "name" : "Ca Bc Office Assistant Naming System",
        "description" : "Medical Office Assistant ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-out-of-province-provider"
        },
        "name" : "Ca Bc Out Of Province Provider Naming System",
        "description" : "Out of Province Provider",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-paramedic"
        },
        "name" : "Ca Bc Paramedic Naming System",
        "description" : "Paramedic Practitioner ID",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-plr-common-party-number"
        },
        "name" : "Ca Bc Plr Common Party Number Naming System",
        "description" : "Common Party Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-plr-ifc"
        },
        "name" : "Ca Bc Plr Ifc Naming System",
        "description" : "Internal Facility Code",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-plr-ipc"
        },
        "name" : "Ca Bc Plr Ipc Naming System",
        "description" : "Internal Party Code",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-plr-org-id"
        },
        "name" : "Ca Bc Plr Org Id Naming System",
        "description" : "Organization",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-radiation-technologist"
        },
        "name" : "Ca Bc Radiation Technologist Naming System",
        "description" : "Medical Radiation Technologist Identifier",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-registered-pharmacy"
        },
        "name" : "Ca Bc Registered Pharmacy Naming System",
        "description" : "Pharmacy ID Number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "NamingSystem"
          }
        ],
        "reference" : {
          "reference" : "NamingSystem/ca-bc-special-register-general"
        },
        "name" : "Ca Bc Special Register General Naming System",
        "description" : "Special Register General",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddLocation-Bundle"
        },
        "name" : "Example-AddLocation-Bundle",
        "description" : "An example of bundle that is adding a location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle",
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddLocationWithLinks-Bundle"
        },
        "name" : "Example-AddLocationWithLinks-Bundle",
        "description" : "An example of bundle that is adding a location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddLocationWithLinks-Bundle-Response"
        },
        "name" : "Example-AddLocationWithLinks-Bundle-Response",
        "description" : "An example of bundle that is adding a location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddOrganization-Bundle"
        },
        "name" : "Example-AddOrganization-Bundle",
        "description" : "Example of a Bundle of resources that are needed to create an Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle",
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddPractitioner-Batch-Bundle-Response"
        },
        "name" : "Example-AddPractitioner-Batch-Bundle-Response",
        "description" : "Example of a bundle of resources sent when responding to a practitioner create.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddPractitioner-Bundle"
        },
        "name" : "Example-AddPractitioner-Bundle",
        "description" : "Example of a bundle of resources sent when requesting a practitioner create.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle",
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-AddPractitioner-Bundle-Response"
        },
        "name" : "Example-AddPractitioner-Bundle-Response",
        "description" : "Example of a bundle of resources sent when responding to a practitioner create.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/Example-AddPractitioner-Practitioner"
        },
        "name" : "Example-AddPractitioner-Practitioner",
        "description" : "Example of a BC practitioner that is being created.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00187833.BC.PRS"
        },
        "name" : "Example-Another-Atomic-Practitioner",
        "description" : "Example of another generic Practitioner.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/IFC.00047422.BC.PRS"
        },
        "name" : "Example-Atomic-Location",
        "description" : "Example of a Location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/IPC.00047422.BC.PRS"
        },
        "name" : "Example-Atomic-Organization",
        "description" : "Example of an Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.26.PRS"
        },
        "name" : "Example-Atomic-OrganizationAffiliation-LocRef",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.25.PRS"
        },
        "name" : "Example-Atomic-OrganizationAffiliation-OrgRef",
        "description" : "Example of the OrganizationAffiliation for Organization to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00047422.BC.PRS"
        },
        "name" : "Example-Atomic-Practitioner",
        "description" : "Example of generic Practitioner.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.24.PRS"
        },
        "name" : "Example-Atomic-PractitionerRole-LocRef",
        "description" : "Example of the PractitionerRole for Practitioner to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.23.PRS"
        },
        "name" : "Example-Atomic-PractitionerRole-OrgRef",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00047422.BC.PRS"
        },
        "name" : "Example-Atomic-PractitionerRole-RoleSpecialty",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-Batch-Bundle"
        },
        "name" : "Example-Batch-Bundle",
        "description" : "An example of a Batch Bundle that contains one each of a Practitioner bundle, Organization bundle, and a Location bundle.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-batch-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-Batch-Bundle-Response"
        },
        "name" : "Example-Batch-Bundle-Response",
        "description" : "An example of a Batch Bundle that contains one each of a Practitioner bundle.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-batch-response-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/Example-Credential-Granting-Institution"
        },
        "name" : "Example-Credential-Granting-Institution",
        "description" : "Example of an credential granting institution.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-DistributeOrganization-Bundle"
        },
        "name" : "Example-DistributeOrganization-Bundle",
        "description" : "Example of a bundle of resources sent when distributing a Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-DistributePractitioner-Bundle"
        },
        "name" : "Example-DistributePractitioner-Bundle",
        "description" : "Example of a bundle of resources sent when distributing a Practitioner.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle",
        "groupingId" : "Bundles"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-DistributePractitioner-Bundle-forTesting"
        },
        "name" : "Example-DistributePractitioner-Bundle-forTesting",
        "description" : "Example of a bundle of resources sent when distributing a Practitioner.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-Location-Response"
        },
        "name" : "Example-GET-Location-Response",
        "description" : "Example of a response returning one Location",
        "exampleBoolean" : true,
        "groupingId" : "RestfulQueryResponse"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-Organization-Response"
        },
        "name" : "Example-GET-Organization-Response",
        "description" : "Example of a response returning one Organization.",
        "exampleBoolean" : true,
        "groupingId" : "RestfulQueryResponse"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-OrganizationAffiliation-byOrganization-Response"
        },
        "name" : "Example-GET-OrganizationAffiliation-byOrganization-Response",
        "description" : "Example of a response returning list of OrganizationAffiliation",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-OrganizationAffiliation-Response"
        },
        "name" : "Example-GET-OrganizationAffiliation-Response",
        "description" : "Example of a response returning one OrganizationAffiliation",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-Practitioner-Param-Response"
        },
        "name" : "Example-GET-Practitioner-Param-Response",
        "description" : "Example of a response returning two Practioners.",
        "exampleBoolean" : true,
        "groupingId" : "RestfulQueryResponse"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-Practitioner-Response"
        },
        "name" : "Example-GET-Practitioner-Response",
        "description" : "Example of a response returning one Practioners.",
        "exampleBoolean" : true,
        "groupingId" : "RestfulQueryResponse"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-PractitionerRole-byPractitioner-Response"
        },
        "name" : "Example-GET-PractitionerRole-byPractitioner-Response",
        "description" : "Example of a response returning all the PractitionerRole for one practitioner",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-GET-PractitionerRole-Response"
        },
        "name" : "Example-GET-PractitionerRole-Response",
        "description" : "Example of a response returning one PractitionerRole",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-Individual-Provider-Bundle"
        },
        "name" : "Example-Individual-Provider-Bundle",
        "description" : "An example of a Provider Bundle, i.e. A Practitioner and PractitionerRole in a Bundle that represents a PLR Individual Provider.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/Example-Location-For-Add"
        },
        "name" : "Example-Location-For-Add",
        "description" : "Example of a Location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/IFC.00147423.BC.PRS"
        },
        "name" : "Example-Location-For-Add-Response",
        "description" : "Example of a Location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Location"
          }
        ],
        "reference" : {
          "reference" : "Location/IFC.00147422.BC.PRS"
        },
        "name" : "Example-Location-For-Update",
        "description" : "Example of a Location for update.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-7018"
        },
        "name" : "Example-OperationOutcome-7018",
        "description" : "OperationOutcome example for Individual Provider search - wildcard error.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-7047"
        },
        "name" : "Example-OperationOutcome-7047",
        "description" : "OperationOutcome example for Individual Provider search - no provider records found.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-7049"
        },
        "name" : "Example-OperationOutcome-7049",
        "description" : "OperationOutcome example for Individual Provider search - too many results.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-BatchError"
        },
        "name" : "Example-OperationOutcome-BatchError",
        "description" : "OperationOutcome example of a success message.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-BatchSuccess"
        },
        "name" : "Example-OperationOutcome-BatchSuccess",
        "description" : "OperationOutcome example of a success message.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-MaintainSuccess"
        },
        "name" : "Example-OperationOutcome-MaintainSuccess",
        "description" : "OperationOutcome example of a success message.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Example-OperationOutcome-Success"
        },
        "name" : "Example-OperationOutcome-Success",
        "description" : "OperationOutcome example of a success message.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/Example-Organization-1"
        },
        "name" : "Example-Organization-1",
        "description" : "Example of an Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/IPC.00147434.BC.PRS"
        },
        "name" : "Example-Organization-1-Update",
        "description" : "Example of an Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/IPC.00147437.BC.PRS"
        },
        "name" : "Example-Organization-2",
        "description" : "Example of generic Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/Example-Organization-PrimaryCare"
        },
        "name" : "Example-Organization-PrimaryCare",
        "description" : "Example of an Primary Care clinic",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/IPC.00147436.BC.PRS"
        },
        "name" : "Example-Organization-Response",
        "description" : "Example of an Organization that is being created.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.132.PRS"
        },
        "name" : "Example-OrganizationAffiliation-2-LocRef-FromOrg",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.142.PRS"
        },
        "name" : "Example-OrganizationAffiliation-3-LocRef-FromOrg",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.141.PRS"
        },
        "name" : "Example-OrganizationAffiliation-3-OrgRef-FromOrg",
        "description" : "Example of the OrganizationAffiliation for Organization to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/Example-OrganizationAffiliation-Loc1"
        },
        "name" : "Example-OrganizationAffiliation-Loc1",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.1182.PRS"
        },
        "name" : "Example-OrganizationAffiliation-Loc1-U",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/Example-OrganizationAffiliation-Loc2"
        },
        "name" : "Example-OrganizationAffiliation-Loc2",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.1142.PRS"
        },
        "name" : "Example-OrganizationAffiliation-Loc2-U",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.182.PRS"
        },
        "name" : "Example-OrganizationAffiliation-LocRef-FromOrg-2",
        "description" : "Example of the OrganizationAffiliation for Organization to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.131.PRS"
        },
        "name" : "Example-OrganizationAffiliation-OrgRef-FromOrg-1",
        "description" : "Example of the OrganizationAffiliation for Organization to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OrganizationAffiliation"
          }
        ],
        "reference" : {
          "reference" : "OrganizationAffiliation/RELN.181.PRS"
        },
        "name" : "Example-OrganizationAffiliation-OrgRef-FromOrg-2",
        "description" : "Example of the OrganizationAffiliation for Organization to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-affiliation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-Organizational-Provider-Bundle"
        },
        "name" : "Example-Organizational-Provider-Bundle",
        "description" : "An example of a Provider Bundle, i.e. A Organization and PractitionerRole and OrganizationAffiliation in a Bundle that represents a PLR Organizational Provider.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00147422.BC.PRS"
        },
        "name" : "Example-Practitioner",
        "description" : "Example of generic Practitioner.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00147622.BC.PRS"
        },
        "name" : "Example-Practitioner-Response",
        "description" : "Example of generic Practitioner response.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00147699.BC.PRS"
        },
        "name" : "Example-Practitioner-Response-test",
        "description" : "Example of generic Practitioner response.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00147433.BC.PRS"
        },
        "name" : "Example-Practitioner-Update",
        "description" : "Example Practitioner resource for updating License Status.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Practitioner"
          }
        ],
        "reference" : {
          "reference" : "Practitioner/IPC.00763481.BC.PRS"
        },
        "name" : "Example-Practitioner-UpdateLicense",
        "description" : "Example Practitioner resource for updating License Status.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00147422.BC.PRS"
        },
        "name" : "Example-PractitionerRole-1-Role-FromPractitioner",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00147622.BC.PRS"
        },
        "name" : "Example-PractitionerRole-1-Role-FromPractitioner-Response",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00147699.BC.PRS"
        },
        "name" : "Example-PractitionerRole-1-Role-FromPractitioner-Response-test",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00147633.BC.PRS"
        },
        "name" : "Example-PractitionerRole-1-Role-FromPractitioner-Update-Response",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00763481.BC.PRS"
        },
        "name" : "Example-PractitionerRole-1-Role-Update",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.123.PRS"
        },
        "name" : "Example-PractitionerRole-2-OrgRef-FromPractitioner",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.124.PRS"
        },
        "name" : "Example-PractitionerRole-2-OrgRef-FromPractitioner-Response",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.125.PRS"
        },
        "name" : "Example-PractitionerRole-3-LocRef-FromPractitioner",
        "description" : "Example of the PractitionerRole for Practitioner to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.126.PRS"
        },
        "name" : "Example-PractitionerRole-3-LocRef-FromPractitioner-Response",
        "description" : "Example of the PractitionerRole for Practitioner to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.127.PRS"
        },
        "name" : "Example-PractitionerRole-4-PracRef-FromOrg",
        "description" : "Example of the PractitionerRole for Practitioner to Practitioner relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.128.PRS"
        },
        "name" : "Example-PractitionerRole-4-PracRef-FromOrg-Response",
        "description" : "Example of the PractitionerRole for Practitioner to Practitioner relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.153.PRS"
        },
        "name" : "Example-PractitionerRole-5-OrgRef-FromPractitioner",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.129.PRS"
        },
        "name" : "Example-PractitionerRole-5-PracRef-FromLoc",
        "description" : "Example of the PractitionerRole for Practitioner to Practitioner relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.130.PRS"
        },
        "name" : "Example-PractitionerRole-5-PracRef-FromLoc-Response",
        "description" : "Example of the PractitionerRole for Practitioner to Practitioner relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/Example-PractitionerRole-Loc3"
        },
        "name" : "Example-PractitionerRole-Loc3",
        "description" : "Example of the PractitionerRole for Practitioner to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.1125.PRS"
        },
        "name" : "Example-PractitionerRole-Loc3-U",
        "description" : "Example of the PractitionerRole for Practitioner to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.175.PRS"
        },
        "name" : "Example-PractitionerRole-LocRef-FromPractitioner-3",
        "description" : "Example of the PractitionerRole for Practitioner to Location relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.12373.PRS"
        },
        "name" : "Example-PractitionerRole-OrgRef-FromPrac-1-Update",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship update.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.173.PRS"
        },
        "name" : "Example-PractitionerRole-OrgRef-FromPractitioner-1",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/RELN.193.PRS"
        },
        "name" : "Example-PractitionerRole-OrgRef-FromPractitioner-2",
        "description" : "Example of the PractitionerRole for Practitioner to Organization relationship.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-role-relationships"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/Example-PractitionerRole-Role-FromPrac-CPSID"
        },
        "name" : "Example-PractitionerRole-Role-FromPrac-CPSID",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "PractitionerRole"
          }
        ],
        "reference" : {
          "reference" : "PractitionerRole/IPC.00147433.BC.PRS"
        },
        "name" : "Example-PractitionerRole-Role-Update-Specialty",
        "description" : "Example of the PractitionerRole with Speciality.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Organization"
          }
        ],
        "reference" : {
          "reference" : "Organization/Example-Qualification-Organization"
        },
        "name" : "Example-Qualification-Organization",
        "description" : "Example of an organization's qualifications.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Add-Location"
        },
        "name" : "Example-Request-Add-Location",
        "description" : "Example Parameters to add an Location (aka Facility).",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Add-Organization"
        },
        "name" : "Example-Request-Add-Organization",
        "description" : "Example Parameters to add an Organizational Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Add-Practitioner"
        },
        "name" : "Example-Request-Add-Practitioner",
        "description" : "Example Parameters to add an Individual Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Distribution-Organization"
        },
        "name" : "Example-Request-Distribution-Organization",
        "description" : "Example Parameters to distribute an Individual Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Distribution-Practitioner"
        },
        "name" : "Example-Request-Distribution-Practitioner",
        "description" : "Example Parameters to distribute an Individual Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Update-License-Practitioner"
        },
        "name" : "Example-Request-Update-License-Practitioner",
        "description" : "Example Parameters to update the license of an Individual Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Update-Location"
        },
        "name" : "Example-Request-Update-Location",
        "description" : "Example Parameters to update a Location (aka Facility).",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Update-Organization"
        },
        "name" : "Example-Request-Update-Organization",
        "description" : "Example Parameters to update an Organizational Provider.",
        "exampleBoolean" : true
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Request-Update-Practitioner"
        },
        "name" : "Example-Request-Update-Practitioner",
        "description" : "Example Parameters to update various attributes of a Individual Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsRequestExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Response-Add-Location"
        },
        "name" : "Example-Response-Add-Location",
        "description" : "Example Parameters to add an Location (aka Facility).",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Response-Add-Organization"
        },
        "name" : "Example-Response-Add-Organization",
        "description" : "Example Parameters for Add Organization Provider response.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Response-Add-Practitioner"
        },
        "name" : "Example-Response-Add-Practitioner",
        "description" : "Example Parameters for Add Individual Provider response.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-Response-Query-Organization-Bundle"
        },
        "name" : "Example-Response-Query-Organization-Bundle",
        "description" : "An example search response bundle with Organizational Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-Response-Query-Practitioner-Bundle"
        },
        "name" : "Example-Response-Query-Practitioner-Bundle",
        "description" : "An example search response bundle with Individual Provider.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Response-Update-Organization"
        },
        "name" : "Example-Response-Update-Organization",
        "description" : "Example Parameters for Update Organization Provider response.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Example-Response-Update-Practitioner"
        },
        "name" : "Example-Response-Update-Practitioner",
        "description" : "Example Parameters for Update Individual Provider response.",
        "exampleBoolean" : true,
        "groupingId" : "OperationsResponseExamples"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdateLocationWithLinks-Bundle"
        },
        "name" : "Example-UpdateLocationWithLinks-Bundle",
        "description" : "An example of bundle that is updating a location.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdateOrganization-Bundle"
        },
        "name" : "Example-UpdateOrganization-Bundle",
        "description" : "Example of a Bundle of resources that are needed to update an Organization.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdateOrganization-Bundle-Response"
        },
        "name" : "Example-UpdateOrganization-Bundle-Response",
        "description" : "Example of a Bundle of resources representing a Organization Response.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdatePractitioner-Batch-Bundle-Response"
        },
        "name" : "Example-UpdatePractitioner-Batch-Bundle-Response",
        "description" : "Example of a bundle of resources sent when responding to a practitioner update.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdatePractitioner-Bundle"
        },
        "name" : "Example-UpdatePractitioner-Bundle",
        "description" : "Example of a bundle to update an Indivivdual Provider.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdatePractitioner-Bundle-Response"
        },
        "name" : "Example-UpdatePractitioner-Bundle-Response",
        "description" : "Example of a bundle of resources sent when responding to a practitioner update.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/Example-UpdatePractitioner-LicenseStatus-Bundle"
        },
        "name" : "Example-UpdatePractitioner-LicenseStatus-Bundle",
        "description" : "Example of a bundle to update an Indivivdual Provider's License Status.",
        "exampleCanonical" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-primary-care-clinic-extension"
        },
        "name" : "Extension for BC Organization to add Primary Care Clinic details",
        "description" : "A wrapper extension that will allow to add the Primary Care Clinic details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-clinic-legal-name-extension"
        },
        "name" : "Extension for the clinic business legal name.",
        "description" : "The clinic business lagal name",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-pci-extension"
        },
        "name" : "Extension to indicate if the clinic is part of the Primary Care Initiative.",
        "description" : "Flag that indicates if (Primary Care) Clinic is part of the PrimaryCare Initiative. not all PC clinic are part of this initiative",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-availability-extension"
        },
        "name" : "Extension to represent Availability, or hours of operation, for clinic, or other Profiles",
        "description" : "Can represent the Available time or the Not-Available details",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-clinic-owner-extension"
        },
        "name" : "Extension to represent clinic Owners.",
        "description" : "The (Primary Care) Clinic Owner - still pending some detailed requirements",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-availableTime-extension"
        },
        "name" : "Extension to represent the available Time, or hours of operation, for clinic, or other Profiles",
        "description" : "Can represent the Available time",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-clinic-ownership-type-extension"
        },
        "name" : "Extension to represent the Clinic Ownership type.",
        "description" : "The (Primary Care) Clinic Ownership type, the expected value is one from Health Authority Owned/Operated, First Nation Health Authority Owned/Operated, Physician Owned/Operated, Non-Profit Society, Non-Physician Corporation, Other",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-clinic-payee-number-extension"
        },
        "name" : "Extension to represent the Clinic Payee number.",
        "description" : "The (Primary Care) Clinic Payee number",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-clinic-service-delivery-type-extension"
        },
        "name" : "Extension to represent the Clinic Service Delivery type.",
        "description" : "The (Primary Care) Clinic Service Delivery type, the expected value is one from Longitudinal, Episodic, and Mixed",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-organization-clinic-type-extension"
        },
        "name" : "Extension to represent the Clinic type.",
        "description" : "The (Primary Care) Clinic type, the expected value is one from UPCC, FNPCI, NPCC, CHC, Walk-In/Episodic Care Clinic, Family Practice, Longitudinal Primary Care Practice, Hybrid Primary Care Practice",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bc-not-available-extension"
        },
        "name" : "Extension to represent the details when an item is NOT available for clinic, or other Profiles",
        "description" : "Can represent the Not Avaialble details",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-maintain"
        },
        "name" : "Maintain PLR entities.",
        "description" : "This operation is used to create and update the resources that represent a Provider or Facility.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-distribution"
        },
        "name" : "PLR entities sent out in a distribution.",
        "description" : "This operation is used to distribute the resources that represent a Provider or Facility.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-extended-location-query"
        },
        "name" : "Query for a location that returns associated resources - FUTURE",
        "description" : "This operation is used to query for an location and will return the information for that location along with any instances that can be found by following associations to other providers, organizations, or location.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-entity-location-query"
        },
        "name" : "Query for a location without returning associations",
        "description" : "This operation is used to query for an location and will return the information for that location without following associations to other practitioner, organizations, or locations.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-extended-practitioner-query"
        },
        "name" : "Query for a Practitioner that returns associated resources - FUTURE",
        "description" : "This operation is used to query for a provider and will return the information for that provider along with any instances that can be found by following associations to other providers, organizations, or facilities.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-entity-practitioner-query"
        },
        "name" : "Query for a practitioner without returning associations",
        "description" : "This operation is used to query for a practitioner and will return the information for that practitioner without following associations to other providers, organizations, or facilities.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-extended-organization-query"
        },
        "name" : "Query for an organization that returns associated resources - FUTURE",
        "description" : "This operation is used to query for an organization and will return the information for that organization along with any instances that can be found by following associations to other practitioners, organizations, or locations.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationDefinition"
          }
        ],
        "reference" : {
          "reference" : "OperationDefinition/bc-entity-organization-query"
        },
        "name" : "Query for an organization without returning associations",
        "description" : "This operation is used to query for an organization and will return the information for that organization without following associations to other providers, organizations, or facilities.",
        "exampleBoolean" : false,
        "groupingId" : "Operations"
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "PLR Overview",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "specification.html"
            }
          ],
          "nameUrl" : "specification.html",
          "title" : "FHIR Design and Overview",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "designexamples.html"
            }
          ],
          "nameUrl" : "designexamples.html",
          "title" : "URL Examples",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "transition.html"
            }
          ],
          "nameUrl" : "transition.html",
          "title" : "Transition from V3 Provider to FHIR",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "connected_partner.html"
            }
          ],
          "nameUrl" : "connected_partner.html",
          "title" : "Becoming a Connected Partner",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "future.html"
            }
          ],
          "nameUrl" : "future.html",
          "title" : "Releases and Future Plans",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "techdetails.html"
            }
          ],
          "nameUrl" : "techdetails.html",
          "title" : "Technical Details",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "glossary.html"
            }
          ],
          "nameUrl" : "glossary.html",
          "title" : "Glossary",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "credits.html"
            }
          ],
          "nameUrl" : "credits.html",
          "title" : "Credits",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
