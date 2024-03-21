
### PLR Application Overview
The Provider and Location Registry (PLR) is a centralized repository of core information about health service providers, e.g., physicians, nurses, pharmacists.  Information is supplied by authorized sources such as professional colleges. PLR ensures the security of provider information by employing or enabling proven security and privacy techniques. Data in the repository is available to authorized organizations to facilitate the transmission of provider information between authorized organizations in real time.  This makes PLR a cornerstone in the development of the Electronic Health Record (EHR).

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

Any given point of service (PoS) can only access the Provider data fields that are included in the relevant information sharing agreements with the Ministry of Health. Specific data permissions are set within the PLR.  A PoS application can use the PLR as the sole source of Provider information or to complement existing retained Provider information.

### Providers

A *Provider* is a person / individual or an organization acting in a role. The PLR uses the terms Individual Provider and Organizational Provider to distinguish between the two types.
Examples:

* Persons / Individual Provider – Dr. Sara Scalpel in the role of medical doctor.
* Organizational Provider – Local Drug Mart #44 in the role of a Pharmacy.

The information recorded for Providers consists of unique identifiers, names, addresses, telecommunication numbers, electronic addresses, expertise, credentials, statuses, conditions, notes, relationships, disciplinary actions, and work locations. Information for Individual Providers also includes demographic details.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="400px" src="bc_provider.png" alt="BC PLR Provider"/>
  <figcaption>Figure 1.1 - BC PLR Provider</figcaption>
</figure>
{::options parse_block_html="true" /}

The relationships above are compositions, the children cannot exist without the parent(s).  I.e. the Individual or Organization Provider cannot exist without a Party and Role.  And each of the Facility-to-Provider or Provider-to-Provider relationships must be connected to existing Facilities or Providers.

### Facilities

A Facility is an identified, named place, piece of equipment, or amenity of interest to BC Health which is physical (e.g. a building or vehicle).  It can be a a particular place or position which may be physically/spatially related.  Facilities have names, and may have other communication mechanisms: mailing addresses, telephone numbers, etc.  As well, multiple organizations or individual providers can be related to a facility.

A Facility is a unique civic address in BC and may be:

* A single building (most frequent case).
* One of several assigned to very large buildings with multiple entrances (e.g. Vancouver General).

Examples: Long term care facility, Walk-in Clinic, Urgent Care Centre, Public Health Office, Hospitals, Ambulances, Pharmacies, Laboratory offices, Community Medical Imaging Clinics.

The PLR concept of a Providers Work Location will be promoted to an independent entity called Facility.  Facilities are stand-alone objects that may be related to, and only to,  providers through relationships.

This enables:

* Better Health Sector clinical document delivery, enhance location quality, and improve upon the PLR model by implementing Facility as a standalone concept.
* PLR to move toward the source of truth of Facility information for use by the Ministry’s analytics teams and Health Sector systems, where currently disparate silos of Facility information exist. 


{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="550px" src="bc_facility.png" alt="BC PLR Facility"/>
  <figcaption>Figure 1.2 - BC PLR Facility</figcaption>
</figure>
{::options parse_block_html="true" /}

The above diagram outlines the different entities that compose a facility:

* Facility Details - owner, operator, effective dates
* Civic Address - civic address along with latitude/longitude and community health service area (CHSA) codes and code descriptions
* Facility Identifier - identifier(s) with identifier type
* Community Health Service Area - a health boundary within the Province of BC
* Primary Care netowrk - a health boundary within the Province of BC

### Relation to CA Baseline and other IGs

This Implementation Guide was written based on resource profiles from CA Baseline where available (Practitioner, Organization, and Location) and otherwise from FHIR R4 (OrganizationAffiliation and PractitionerRole).  At this time this IG is conformant with the CA Baseline.

### Miscellaneous

#### PLR User Guide

The PLR User Guide provides a detailed overview of the current PLR functionality.  Please contact the [registry administrator](mailto:HLTH.REGISTRIESADMIN@gov.bc.ca) to request a copy of the User Guide.

#### Identifiers and Naming Sytems

PLR Practitioner, Organization and Location resources can be identified by different identifiers, which can be created and maintain by various sources. To identify the origin of these various identifiers, the FHIR norm defines Naming Systems. Naming Systems are meant to replace OIDs, used in HL7 v3 messages. The mapping between OIDs and Namings systems used in PLR is listed in this [file](PLR-NamingSystems.pdf).

All the Naming Systems in PLR are registered in the [Canadian URI Registry](https://simplifier.net/canadianuriregistry/~resources?category=NamingSystem&sortBy=RankScore_desc) or in the [BC-core project](https://simplifier.net/bccore/~resources?category=NamingSystem&sortBy=RankScore_desc), depending of their scope (internal to BC or potential use across Canada)

In search queries, identifier and naming systems need to be used together as in following examples:

* Restful Search Request for an Practitioner by CPID - same pattern for Organization or Location  

  GET [Base]/Practitioner?identifier=http://fhir.infoway-inforoute.ca/NamingSystem/ca-bc-license-physician|900012345

* EntitySearch Request for an Location by IFC - same pattern for Organization or Practitioner 
 
  GET [Base]/Location/$entityQuery?identifier=https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc|IFC.00141234.BC.PRS

* In FHIR resources, Naming systems are used like seen in the example below, Organization identifiers block, with IPC and CPN - same pattern for Location or Practitioner 

    "identifier" : [
      {
        "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc",
        "value" : "IPC.00047422.BC.PRS",
        "period" : {
          "start" : "2000-01-01"
        }
      },       
      {
        "system" : "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-common-party-number",
        "value" : "CPN.00147433.BC.PRS",
        "period" : {
          "start" : "2000-01-01"
        }
      }
    ]


#### Conformance Requirements

Conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined in [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html#conflang).

#### Data Absent Reason 

Data may be absent for various reasons. If data is absent the attribute will have a data absent reason extension indicating why data is missing. The entire attribute, e.g. BCHumanName may be absent or just part of it. In the examples below the name use is present but the rest of the name attribute is missing.


For example gender would be masked as follows.

    "_gender" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode" : "masked"
        }
      ]
    }

Below is an example for name.

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

#### Must Support

All of the PLR Profiles include elements that are marked as 'Must Support'.  For the purposes of this guide, Must Support is intended to represent those fields that will be exchanged between client applications and the PLR server.  Client applications who are receving PLR information SHALL be able to receive all fields marked as Must Support without raising an exception.  When sending information to the PLR server, client applications SHOULD be able to send any fields marked as Must Support. 

The privacy and security requried to handle PLR data is fully described in the conformance guides.
