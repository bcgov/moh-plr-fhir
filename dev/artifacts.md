# Artifacts Summary - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Capabilities 

PLR Capability Statements

| | |
| :--- | :--- |
| [BC PLR Client Capability Statement](CapabilityStatement-bc-plr-client-capability-statement.md) | This capability statement describes the use case that is supported by the BC FHIR implementation of PLR.* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
 |
| [BC PLR Server Capability Statement](CapabilityStatement-bc-plr-server-capability-statement.md) | This capability statement is listing the RESTful resources that are exposed as well as the three use cases that are supported by the BC FHIR implementation of PLR (see json or XML for more details):* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain transactions at one time (not implemented yet)
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances (entityQuery and extendedQuery)
All POST and PUT Requests are sent using a Paramaters resource and the Response is always a Bundle resource containing an OperationOutcome and the expected profile(s) (BCPractitioner, BCPractitionerBundle ect …) |

### Operations 

Operation definitions

| | |
| :--- | :--- |
| [Batch Maintain PLR entities.](OperationDefinition-bc-batch.md) | This operation is used to create and update multiple resources (Practitioner only for now) |
| [Maintain PLR entities.](OperationDefinition-bc-maintain.md) | This operation is used to create and update the resources that represent a Provider or Facility. |
| [PLR entities sent out in a distribution.](OperationDefinition-bc-distribution.md) | This operation is used to distribute the resources that represent a Provider or Facility. |
| [Query for a location that returns associated resources - FUTURE](OperationDefinition-bc-extended-location-query.md) | This operation is used to query for an location and will return the information for that location along with any instances that can be found by following associations to other providers, organizations, or location. |
| [Query for a location without returning associations](OperationDefinition-bc-entity-location-query.md) | This operation is used to query for an location and will return the information for that location without following associations to other practitioner, organizations, or locations. |
| [Query for a Practitioner that returns associated resources - FUTURE](OperationDefinition-bc-extended-practitioner-query.md) | This operation is used to query for a provider and will return the information for that provider along with any instances that can be found by following associations to other providers, organizations, or facilities. |
| [Query for a practitioner without returning associations](OperationDefinition-bc-entity-practitioner-query.md) | This operation is used to query for a practitioner and will return the information for that practitioner without following associations to other providers, organizations, or facilities. |
| [Query for an organization that returns associated resources - FUTURE](OperationDefinition-bc-extended-organization-query.md) | This operation is used to query for an organization and will return the information for that organization along with any instances that can be found by following associations to other practitioners, organizations, or locations. |
| [Query for an organization without returning associations](OperationDefinition-bc-entity-organization-query.md) | This operation is used to query for an organization and will return the information for that organization without following associations to other providers, organizations, or facilities. |

### Operations Request Examples 

Operation request examples

| | |
| :--- | :--- |
| [Example-Request-Add-Location](Parameters-Example-Request-Add-Location.md) | Example Parameters to add an Location (aka Facility). |
| [Example-Request-Add-Organization](Parameters-Example-Request-Add-Organization.md) | Example Parameters to add an Organizational Provider. |
| [Example-Request-Add-Practitioner](Parameters-Example-Request-Add-Practitioner.md) | Example Parameters to add an Individual Provider. |
| [Example-Request-Distribution-Organization](Parameters-Example-Request-Distribution-Organization.md) | Example Parameters to distribute an Individual Provider. |
| [Example-Request-Distribution-Practitioner](Parameters-Example-Request-Distribution-Practitioner.md) | Example Parameters to distribute an Individual Provider. |
| [Example-Request-Update-License-Practitioner](Parameters-Example-Request-Update-License-Practitioner.md) | Example Parameters to update the license of an Individual Provider. |
| [Example-Request-Update-Location](Parameters-Example-Request-Update-Location.md) | Example Parameters to update a Location (aka Facility). |
| [Example-Request-Update-Practitioner](Parameters-Example-Request-Update-Practitioner.md) | Example Parameters to update various attributes of a Individual Provider. |

### Operations Response Examples 

Operation response examples

| | |
| :--- | :--- |
| [Example-Response-Add-Location](Parameters-Example-Response-Add-Location.md) | Example Parameters to add an Location (aka Facility). |
| [Example-Response-Add-Organization](Parameters-Example-Response-Add-Organization.md) | Example Parameters for Add Organization Provider response. |
| [Example-Response-Add-Practitioner](Parameters-Example-Response-Add-Practitioner.md) | Example Parameters for Add Individual Provider response. |
| [Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md) | An example search response bundle with Organizational Provider. |
| [Example-Response-Query-Practitioner-Bundle](Bundle-Example-Response-Query-Practitioner-Bundle.md) | An example search response bundle with Individual Provider. |
| [Example-Response-Update-Organization](Parameters-Example-Response-Update-Organization.md) | Example Parameters for Update Organization Provider response. |
| [Example-Response-Update-Practitioner](Parameters-Example-Response-Update-Practitioner.md) | Example Parameters for Update Individual Provider response. |

### Bundles 

Inbound Distribution/Maintain and Batch Bundles

| | |
| :--- | :--- |
| [BCBatchBundle](StructureDefinition-bc-batch-bundle.md) | A Bundle that is used in the PLR Batch operation. |
| [BCBatchReponseBundle](StructureDefinition-bc-batch-response-bundle.md) | A Bundle that is used in the PLR Batch operation. |
| [BCLocationBundle](StructureDefinition-bc-location-bundle.md) | A bundle that submits Location information. |
| [BCOrganizationBundle](StructureDefinition-bc-organization-bundle.md) | A bundle that submits Organization and OrganizationAffiliation information. |
| [BCPractitionerBundle](StructureDefinition-bc-practitioner-bundle.md) | A bundle that submits Practitioner and PractitionerRole information. |
| [Example-AddLocation-Bundle](Bundle-Example-AddLocation-Bundle.md) | An example of bundle that is adding a location. |
| [Example-AddOrganization-Bundle](Bundle-Example-AddOrganization-Bundle.md) | Example of a Bundle of resources that are needed to create an Organization. |
| [Example-AddPractitioner-Bundle](Bundle-Example-AddPractitioner-Bundle.md) | Example of a bundle of resources sent when requesting a practitioner create. |
| [Example-DistributePractitioner-Bundle](Bundle-Example-DistributePractitioner-Bundle.md) | Example of a bundle of resources sent when distributing a Practitioner. |

### Practitioner 

Artifacts associated with Practitioners

| | |
| :--- | :--- |
| [BCPractitioner](StructureDefinition-bc-practitioner.md) | General constraints on the Practitioner resource for use in the BC Provider Registry project. |
| [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md) | General constraints on the PractitionerRole resource for use in the BC Provider Registry project. |
| [BCRoleRelationships](StructureDefinition-bc-role-relationships.md) | General constraints on the PractitionerRole resource for use in the BC Provider Registry project to describe relationships. |

### Organization 

Artifacts associated with Organizations

| | |
| :--- | :--- |
| [BCOrganization](StructureDefinition-bc-organization.md) | General constraints on the Organization resource for use in the BC Provider Registry project. |
| [BCOrganizationAffiliation](StructureDefinition-bc-organization-affiliation.md) | General constraints on the OrganizationAffiliation resource for use in the BC Provider Registry project. |

### Facility 

Artifacts associated with Facilities

| | |
| :--- | :--- |
| [BCLocation](StructureDefinition-bc-location.md) | General constraints on the Location resource for use in the BC Provider Registry project. |

### RESTful Response Examples 

RESTful Query Response Examples

| | |
| :--- | :--- |
| [Example-GET-Location-Response](Bundle-Example-GET-Location-Response.md) | Example of a response returning one Location |
| [Example-GET-Organization-Response](Bundle-Example-GET-Organization-Response.md) | Example of a response returning one Organization. |
| [Example-GET-Practitioner-Param-Response](Bundle-Example-GET-Practitioner-Param-Response.md) | Example of a response returning two Practioners. |
| [Example-GET-Practitioner-Response](Bundle-Example-GET-Practitioner-Response.md) | Example of a response returning one Practioners. |

### Extensions 

Extensions used across all groupings

| | |
| :--- | :--- |
| [BC Address Validation Extension](StructureDefinition-bc-address-validation-status-extension.md) | BC extension for address validation status codes. |
| [BC Birth Place Extension](StructureDefinition-bc-birthplace-extension.md) | Captures the place where a patient/practitioner/person was born. |
| [BC Birth Time Extension](StructureDefinition-bc-birthtime-extension.md) | Adds birth time to the birth date. |
| [BC Communication Purpose Extension](StructureDefinition-bc-communication-purpose-code-extension.md) | BC extension for communication purpose codes. |
| [BC Confidentiality Extension](StructureDefinition-bc-confidentiality-extension.md) | Indicates the confidentiality of a BC provider's (practitioner or organization) information. |
| [BC End Reason Extension](StructureDefinition-bc-end-reason-extension.md) | Tracking end reason. |
| [BC Facility Details Extension](StructureDefinition-bc-facility-details-extension.md) | Provides the details of a facility as represented by a FHIR location. |
| [BC Facility Health Service Area Extension](StructureDefinition-bc-facility-health-service-area-extension.md) | A wrapper extension that will allow to list all the health service area, including the PCN and the Community Health Service Area. |
| [BC Facility Physical Address Extension](StructureDefinition-bc-facility-physical-address-extension.md) | An optional physical address for the facility. |
| [BC License Status Extension](StructureDefinition-bc-license-status-extension.md) | Tracking the status and changes to the status of a practitioner/organization license. |
| [BC Name Use Extension](StructureDefinition-bc-name-use-extension.md) | Allows for use on a simple name string. |
| [BC Notes Extension](StructureDefinition-bc-note-extension.md) | Notes about the practitioner/location/organization. |
| [BC Owner Extension](StructureDefinition-bc-owner-extension.md) | Tracking the owner. |
| [BC Practitioner Conditions Extension](StructureDefinition-bc-practitioner-condition-extension.md) | Conditions on the provider's role |
| [BC Practitioner Date of Death Extension](StructureDefinition-bc-practitioner-deathdate-extension.md) | The Date of Death of a Practitioner. |
| [BC Practitioner Disciplinary Actions Extension](StructureDefinition-bc-practitioner-disciplinary-action-extension.md) | Provides details of disciplinary actions against the provider. |
| [BC Practitioner Qualification Extension](StructureDefinition-bc-practitioner-qualification-extension.md) | The qualifications extensions. |
| [BC Practitioner to Location Type Extension.](StructureDefinition-bc-location-relationship-type-extension.md) | The relationship type of a Practitioner to Location relationship. |
| [BC Practitioner to Organization or Practitioner to Practitioner Type Extension.](StructureDefinition-bc-relationship-type-extension.md) | The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship. |
| [BC Practitioner to Practitioner Relationship Extension](StructureDefinition-bc-practitioner-relationship-extension.md) | Allows for relationships of practitioners to practitioners without needing CareTeam semantics. |
| [BC Specialty Source Extension](StructureDefinition-bc-specialty-source-extension.md) | The specialty source. |
| [BC Valid Period Extension](StructureDefinition-bc-period-extension.md) | The period for when the extended element is valid. |
| [BCOperationOutcome](StructureDefinition-bc-operation-outcome.md) | OperationOutcome for BC. |

### Datatypes 

Artifacts associated with datatypes

| | |
| :--- | :--- |
| [BCAddress](StructureDefinition-bc-address.md) | Adds an end reason, communication purpose and validation status to the address. |
| [BCContactPoint](StructureDefinition-bc-contactPoint.md) | Adds an end reason and extra contact information. |
| [BCHumanName](StructureDefinition-bc-humanName.md) | Adds an end reason and a use code to a name. |
| [BCIdentifier](StructureDefinition-bc-identifier.md) | Adds an end reason to the identifier. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BC Facility Community Health Service Area Extension](StructureDefinition-bc-facility-community-health-area-extension.md) | A code that represents the Community Health Service Area (CHSA) that the location is a part of. |
| [BC Facility Health Authority Area Extension](StructureDefinition-bc-facility-health-authority-extension.md) | A code that represents the health authority area that the location is a part of. |
| [BC Facility Health Service Delivery Area Extension](StructureDefinition-bc-facility-health-service-delivery-area-extension.md) | A code that represents the Health Service Delivery Area (HSDA) that the location is a part of. |
| [BC Facility Local Health Area Extension](StructureDefinition-bc-facility-local-health-area-extension.md) | A code that represents the Local Health Area (LHA) that the location is a part of. |
| [BC Facility Primary Care Network Extension](StructureDefinition-bc-facility-primary-care-network-extension.md) | A code that represents the Primary Care Network (PCN) that the location is a part of. |
| [BC Health Delivery Site Type Extension](StructureDefinition-bc-health-delivery-site-type-extension.md) | Uses to define HDS Type and HDS sub type |
| [BC Health Delivery Site sub-type Extension](StructureDefinition-bc-hds-subtype-extension.md) | Uses to define HDS sub type |
| [Extension for BC Organization to add Primary Care Clinic details](StructureDefinition-bc-organization-primary-care-clinic-extension.md) | A wrapper extension that will allow to add the Primary Care Clinic details. |
| [Extension for the clinic business legal name.](StructureDefinition-bc-organization-clinic-legal-name-extension.md) | The clinic business lagal name |
| [Extension to indicate if the clinic is part of the Primary Care Initiative.](StructureDefinition-bc-organization-pci-extension.md) | Flag that indicates if (Primary Care) Clinic is part of the PrimaryCare Initiative. not all PC clinic are part of this initiative |
| [Extension to represent Availability, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availability-extension.md) | Can represent the Available time or the Not-Available details |
| [Extension to represent clinic Owners.](StructureDefinition-bc-organization-clinic-owner-extension.md) | The (Primary Care) Clinic Owner - still pending some detailed requirements |
| [Extension to represent the Clinic Ownership type.](StructureDefinition-bc-organization-clinic-ownership-type-extension.md) | The (Primary Care) Clinic Ownership type, the expected value is one from Health Authority Owned/Operated, First Nation Health Authority Owned/Operated, Physician Owned/Operated, Non-Profit Society, Non-Physician Corporation, Other |
| [Extension to represent the Clinic Payee number.](StructureDefinition-bc-organization-clinic-payee-number-extension.md) | The (Primary Care) Clinic Payee number |
| [Extension to represent the Clinic Service Delivery type.](StructureDefinition-bc-organization-clinic-service-delivery-type-extension.md) | The (Primary Care) Clinic Service Delivery type, the expected value is one from Longitudinal, Episodic, and Mixed |
| [Extension to represent the Clinic type.](StructureDefinition-bc-organization-clinic-type-extension.md) | The (Primary Care) Clinic type, the expected value is one from UPCC, FNPCI, NPCC, CHC, Walk-In/Episodic Care Clinic, Family Practice, Longitudinal Primary Care Practice, Hybrid Primary Care Practice |
| [Extension to represent the available Time, or hours of operation, for clinic, or other Profiles](StructureDefinition-bc-availableTime-extension.md) | Can represent the Available time |
| [Extension to represent the details when an item is NOT available for clinic, or other Profiles](StructureDefinition-bc-not-available-extension.md) | Can represent the Not Avaialble details |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BC Address Validation Status Value Set](ValueSet-bc-address-validation-status-value-set.md) | BC address validation status value set. |
| [BC Communication Purpose Value Set](ValueSet-bc-communication-purpose-value-set.md) | BC communication purpose value set. |
| [BC End Reason Value Set](ValueSet-bc-end-reason-value-set.md) | BC end reason value set. |
| [BC Expertise Value Set](ValueSet-bc-expertise-value-set.md) | BC Expertise value set. |
| [BC Health Delivery Site Type Value Set](ValueSet-bc-hds-type-value-set.md) | BC Health Delivery Site Type Value set. |
| [BC Language Value Set](ValueSet-bc-language-value-set.md) | BC Language value set. |
| [BC License Status Class Value Set](ValueSet-bc-license-status-class-value-set.md) | BC specific license status class value set. |
| [BC License Status Reason Value Set](ValueSet-bc-license-status-reason-value-set.md) | BC specific license status reason value set. |
| [BC License Status Value Set](ValueSet-bc-license-status-value-set.md) | BC specific license status value set. |
| [BC Organization Role Code Value Set](ValueSet-bc-organization-role-value-set.md) | BC Organization Role Codes. |
| [BC Practitioner Qualification Value Set](ValueSet-bc-qualification-value-set.md) | BC specific qualification value set. |
| [BC Practitioner Role Code Value Set](ValueSet-bc-practitioner-role-value-set.md) | BC Practitioner Role Codes. |
| [BC Relationship Type Value Set](ValueSet-bc-relationship-type-value-set.md) | BC relationship type value set. |
| [Bc Condition Type Value Set](ValueSet-bc-condition-type-value-set.md) | BC Condition Type Value Set. |
| [Bc Error Value Set](ValueSet-bc-error-value-set.md) | BC Error Value Set. |
| [Bc Location Identifier Type Value Set](ValueSet-bc-location-identifier-type-value-set.md) | BC Location Identifier Type Value Set. |
| [Bc Location Relationship Type Value Set](ValueSet-bc-location-relationship-type-value-set.md) | BC Location Relationship Type Value Set. |
| [Bc Owner Value Set](ValueSet-bc-owner-value-set.md) | BC Owner Value Set. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bc Address Validation Status Codes](CodeSystem-bc-address-validation-status-code-system.md) | Bc Address Validation Status Code System |
| [Bc Clinic Ownership Type Codes](CodeSystem-bc-clinic-ownership-type-code-system.md) | Bc Clinic Ownership Type Code System |
| [Bc Clinic Service Delivery Type Codes](CodeSystem-bc-clinic-service-delivery-type-code-system.md) | Bc Clinic Service Delivery Type Code System |
| [Bc Clinic Type Codes](CodeSystem-bc-clinic-type-code-system.md) | Bc Clinic Type Code System |
| [Bc Communication Purpose Codes](CodeSystem-bc-communication-purpose-code-system.md) | Bc Communication Purpose Code System |
| [Bc Condition Type Codes](CodeSystem-bc-condition-type-code-system.md) | Bc Condition Type Code System |
| [Bc Credential Codes](CodeSystem-bc-credential-code-system.md) | Bc Credential Code System |
| [Bc End Reason Codes](CodeSystem-bc-end-reason-code-system.md) | Bc End Reason Code System |
| [Bc Error Codes](CodeSystem-bc-error-code-system.md) | Bc Error Code System |
| [Bc Expertise Codes](CodeSystem-bc-expertise-code-system.md) | Bc Expertise Code System |
| [Bc Hds Subtype Codes](CodeSystem-bc-hds-subtype-code-system.md) | Bc Hds Subtype Code System |
| [Bc Hds Type Codes](CodeSystem-bc-hds-type-code-system.md) | Bc Hds Type Code System |
| [Bc Language Codes](CodeSystem-bc-language-code-system.md) | Bc Language Code System |
| [Bc License Status Class Codes](CodeSystem-bc-license-status-class-code-system.md) | Bc License Status Class Code System |
| [Bc License Status Codes](CodeSystem-bc-license-status-code-system.md) | Bc License Status Code System |
| [Bc License Status Reason Codes](CodeSystem-bc-license-status-reason-code-system.md) | Bc License Status Reason Code System |
| [Bc Location Identifier Type Codes](CodeSystem-bc-location-identifier-type-code-system.md) | Bc Location Identifier Type Code System |
| [Bc Location Relationship Type Codes](CodeSystem-bc-location-relationship-type-code-system.md) | Bc Location Relationship Type Code System |
| [Bc Organization Role Codes](CodeSystem-bc-organization-role-code-system.md) | Bc Organization Role Code System |
| [Bc Owner Codes](CodeSystem-bc-owner-code-system.md) | Bc Owner Code System |
| [Bc Practitioner Role Codes](CodeSystem-bc-practitioner-role-code-system.md) | Bc Practitioner Role Code System |
| [Bc Relationship Type Codes](CodeSystem-bc-relationship-type-code-system.md) | Bc Relationship Type Code System |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Ca Bc Ambulance Director Naming System](NamingSystem-ca-bc-ambulance-director.md) | Ambulance Operator Medical Director ID |
| [Ca Bc Electroneurophysiology Technologist Naming System](NamingSystem-ca-bc-electroneurophysiology-technologist.md) | Electroneurophysiology Technologist Identifier |
| [Ca Bc Health Authority Id Naming System](NamingSystem-ca-bc-health-authority-id.md) | Health Authority ID |
| [Ca Bc License Acupuncturist Naming System](NamingSystem-ca-bc-license-acupuncturist.md) | Registered Acupuncturist ID |
| [Ca Bc License Chiropractor Naming System](NamingSystem-ca-bc-license-chiropractor.md) | CHIROID |
| [Ca Bc License Clinical Counsellor Naming System](NamingSystem-ca-bc-license-clinical-counsellor.md) | BC Association of Clinical Counsellors ID# |
| [Ca Bc License Dentist Naming System](NamingSystem-ca-bc-license-dentist.md) | Dentist ID Number |
| [Ca Bc License Dietitian Naming System](NamingSystem-ca-bc-license-dietitian.md) | Registered Dietitian ID Number |
| [Ca Bc License Family Therapist Naming System](NamingSystem-ca-bc-license-family-therapist.md) | Marriage and Family Therapists ID Number |
| [Ca Bc License Kinesiologist Naming System](NamingSystem-ca-bc-license-kinesiologist.md) | Kinesiologist ID Number |
| [Ca Bc License Massage Therapist Naming System](NamingSystem-ca-bc-license-massage-therapist.md) | Registered Massage Therapist ID Number |
| [Ca Bc License Midwife Naming System](NamingSystem-ca-bc-license-midwife.md) | Registered Midwife ID Number |
| [Ca Bc License Naturopathic Physician Naming System](NamingSystem-ca-bc-license-naturopathic-physician.md) | Naturopathic Doctor ID |
| [Ca Bc License Nurse Naming System](NamingSystem-ca-bc-license-nurse.md) | Registered Nurse ID Number |
| [Ca Bc License Occupational Therapist Naming System](NamingSystem-ca-bc-license-occupational-therapist.md) | Occupational Therapist ID Number |
| [Ca Bc License Optometrist Naming System](NamingSystem-ca-bc-license-optometrist.md) | Optometrist ID Number |
| [Ca Bc License Pharmacist Naming System](NamingSystem-ca-bc-license-pharmacist.md) | Pharmacist ID Number |
| [Ca Bc License Pharmacy Technician Naming System](NamingSystem-ca-bc-license-pharmacy-technician.md) | Pharmacy Technician ID Number |
| [Ca Bc License Physical Therapist Naming System](NamingSystem-ca-bc-license-physical-therapist.md) | Physiotherapist ID Number |
| [Ca Bc License Physician Naming System](NamingSystem-ca-bc-license-physician.md) | Physician ID Number |
| [Ca Bc License Podiatric Surgeon Naming System](NamingSystem-ca-bc-license-podiatric-surgeon.md) | Podiatrist ID |
| [Ca Bc License Psychologist Naming System](NamingSystem-ca-bc-license-psychologist.md) | Psychologist ID Number |
| [Ca Bc License Psychotherapy Counsellor Naming System](NamingSystem-ca-bc-license-psychotherapy-counsellor.md) | Counsellor ID Number |
| [Ca Bc License Social Worker Naming System](NamingSystem-ca-bc-license-social-worker.md) | Social Worker ID Number |
| [Ca Bc Ministry Practitioner Id Naming System](NamingSystem-ca-bc-ministry-practitioner-id.md) | Ministry Practitioner ID |
| [Ca Bc Msp Facility Id Naming System](NamingSystem-ca-bc-msp-facility-id.md) | MSP Facility Number |
| [Ca Bc Office Assistant Naming System](NamingSystem-ca-bc-office-assistant.md) | Medical Office Assistant ID |
| [Ca Bc Out Of Province Provider Naming System](NamingSystem-ca-bc-out-of-province-provider.md) | Out of Province Provider |
| [Ca Bc Paramedic Naming System](NamingSystem-ca-bc-paramedic.md) | Paramedic Practitioner ID |
| [Ca Bc Plr Common Party Number Naming System](NamingSystem-ca-bc-plr-common-party-number.md) | Common Party Number |
| [Ca Bc Plr Ifc Naming System](NamingSystem-ca-bc-plr-ifc.md) | Internal Facility Code |
| [Ca Bc Plr Ipc Naming System](NamingSystem-ca-bc-plr-ipc.md) | Internal Party Code |
| [Ca Bc Plr Org Id Naming System](NamingSystem-ca-bc-plr-org-id.md) | Organization |
| [Ca Bc Radiation Technologist Naming System](NamingSystem-ca-bc-radiation-technologist.md) | Medical Radiation Technologist Identifier |
| [Ca Bc Registered Pharmacy Naming System](NamingSystem-ca-bc-registered-pharmacy.md) | Pharmacy ID Number |
| [Ca Bc Special Register General Naming System](NamingSystem-ca-bc-special-register-general.md) | Special Register General |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example-AddLocationWithLinks-Bundle](Bundle-Example-AddLocationWithLinks-Bundle.md) | An example of bundle that is adding a location. |
| [Example-AddLocationWithLinks-Bundle-Response](Bundle-Example-AddLocationWithLinks-Bundle-Response.md) | An example of bundle that is adding a location. |
| [Example-AddPractitioner-Batch-Bundle-Response](Bundle-Example-AddPractitioner-Batch-Bundle-Response.md) | Example of a bundle of resources sent when responding to a practitioner create. |
| [Example-AddPractitioner-Bundle-Response](Bundle-Example-AddPractitioner-Bundle-Response.md) | Example of a bundle of resources sent when responding to a practitioner create. |
| [Example-AddPractitioner-Practitioner](Practitioner-Example-AddPractitioner-Practitioner.md) | Example of a BC practitioner that is being created. |
| [Example-Another-Atomic-Practitioner](Practitioner-IPC.00187833.BC.PRS.md) | Example of another generic Practitioner. |
| [Example-Atomic-Location](Location-IFC.00047422.BC.PRS.md) | Example of a Location. |
| [Example-Atomic-Organization](Organization-IPC.00047422.BC.PRS.md) | Example of an Organization. |
| [Example-Atomic-OrganizationAffiliation-LocRef](OrganizationAffiliation-RELN.26.PRS.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-Atomic-OrganizationAffiliation-OrgRef](OrganizationAffiliation-RELN.25.PRS.md) | Example of the OrganizationAffiliation for Organization to Organization relationship. |
| [Example-Atomic-Practitioner](Practitioner-IPC.00047422.BC.PRS.md) | Example of generic Practitioner. |
| [Example-Atomic-PractitionerRole-LocRef](PractitionerRole-RELN.24.PRS.md) | Example of the PractitionerRole for Practitioner to Location relationship. |
| [Example-Atomic-PractitionerRole-OrgRef](PractitionerRole-RELN.23.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship. |
| [Example-Atomic-PractitionerRole-RoleSpecialty](PractitionerRole-IPC.00047422.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-Batch-Bundle](Bundle-Example-Batch-Bundle.md) | An example of a Batch Bundle that contains one each of a Practitioner bundle, Organization bundle, and a Location bundle. |
| [Example-Batch-Bundle-Response](Bundle-Example-Batch-Bundle-Response.md) | An example of a Batch Bundle that contains one each of a Practitioner bundle. |
| [Example-Credential-Granting-Institution](Organization-Example-Credential-Granting-Institution.md) | Example of an credential granting institution. |
| [Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md) | Example of a bundle of resources sent when distributing a Organization. |
| [Example-DistributePractitioner-Bundle-forTesting](Bundle-Example-DistributePractitioner-Bundle-forTesting.md) | Example of a bundle of resources sent when distributing a Practitioner. |
| [Example-GET-OrganizationAffiliation-Response](Bundle-Example-GET-OrganizationAffiliation-Response.md) | Example of a response returning one OrganizationAffiliation |
| [Example-GET-OrganizationAffiliation-byOrganization-Response](Bundle-Example-GET-OrganizationAffiliation-byOrganization-Response.md) | Example of a response returning list of OrganizationAffiliation |
| [Example-GET-PractitionerRole-Response](Bundle-Example-GET-PractitionerRole-Response.md) | Example of a response returning one PractitionerRole |
| [Example-GET-PractitionerRole-byPractitioner-Response](Bundle-Example-GET-PractitionerRole-byPractitioner-Response.md) | Example of a response returning all the PractitionerRole for one practitioner |
| [Example-Individual-Provider-Bundle](Bundle-Example-Individual-Provider-Bundle.md) | An example of a Provider Bundle, i.e. A Practitioner and PractitionerRole in a Bundle that represents a PLR Individual Provider. |
| [Example-Location-For-Add](Location-Example-Location-For-Add.md) | Example of a Location. |
| [Example-Location-For-Add-Response](Location-IFC.00147423.BC.PRS.md) | Example of a Location. |
| [Example-Location-For-Update](Location-IFC.00147422.BC.PRS.md) | Example of a Location for update. |
| [Example-OperationOutcome-7018](OperationOutcome-Example-OperationOutcome-7018.md) | OperationOutcome example for Individual Provider search - wildcard error. |
| [Example-OperationOutcome-7047](OperationOutcome-Example-OperationOutcome-7047.md) | OperationOutcome example for Individual Provider search - no provider records found. |
| [Example-OperationOutcome-7049](OperationOutcome-Example-OperationOutcome-7049.md) | OperationOutcome example for Individual Provider search - too many results. |
| [Example-OperationOutcome-BatchError](OperationOutcome-Example-OperationOutcome-BatchError.md) | OperationOutcome example of a success message. |
| [Example-OperationOutcome-BatchSuccess](OperationOutcome-Example-OperationOutcome-BatchSuccess.md) | OperationOutcome example of a success message. |
| [Example-OperationOutcome-MaintainSuccess](OperationOutcome-Example-OperationOutcome-MaintainSuccess.md) | OperationOutcome example of a success message. |
| [Example-OperationOutcome-Success](OperationOutcome-Example-OperationOutcome-Success.md) | OperationOutcome example of a success message. |
| [Example-Organization-1](Organization-Example-Organization-1.md) | Example of an Organization. |
| [Example-Organization-1-Update](Organization-IPC.00147434.BC.PRS.md) | Example of an Organization. |
| [Example-Organization-2](Organization-IPC.00147437.BC.PRS.md) | Example of generic Organization. |
| [Example-Organization-PrimaryCare](Organization-Example-Organization-PrimaryCare.md) | Example of an Primary Care clinic |
| [Example-Organization-Response](Organization-IPC.00147436.BC.PRS.md) | Example of an Organization that is being created. |
| [Example-OrganizationAffiliation-2-LocRef-FromOrg](OrganizationAffiliation-RELN.132.PRS.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-3-LocRef-FromOrg](OrganizationAffiliation-RELN.142.PRS.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-3-OrgRef-FromOrg](OrganizationAffiliation-RELN.141.PRS.md) | Example of the OrganizationAffiliation for Organization to Organization relationship. |
| [Example-OrganizationAffiliation-Loc1](OrganizationAffiliation-Example-OrganizationAffiliation-Loc1.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-Loc1-U](OrganizationAffiliation-RELN.1182.PRS.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-Loc2](OrganizationAffiliation-Example-OrganizationAffiliation-Loc2.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-Loc2-U](OrganizationAffiliation-RELN.1142.PRS.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-LocRef-FromOrg-2](OrganizationAffiliation-RELN.182.PRS.md) | Example of the OrganizationAffiliation for Organization to Location relationship. |
| [Example-OrganizationAffiliation-OrgRef-FromOrg-1](OrganizationAffiliation-RELN.131.PRS.md) | Example of the OrganizationAffiliation for Organization to Organization relationship. |
| [Example-OrganizationAffiliation-OrgRef-FromOrg-2](OrganizationAffiliation-RELN.181.PRS.md) | Example of the OrganizationAffiliation for Organization to Organization relationship. |
| [Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md) | An example of a Provider Bundle, i.e. A Organization and PractitionerRole and OrganizationAffiliation in a Bundle that represents a PLR Organizational Provider. |
| [Example-Practitioner](Practitioner-IPC.00147422.BC.PRS.md) | Example of generic Practitioner. |
| [Example-Practitioner-Response](Practitioner-IPC.00147622.BC.PRS.md) | Example of generic Practitioner response. |
| [Example-Practitioner-Response-test](Practitioner-IPC.00147699.BC.PRS.md) | Example of generic Practitioner response. |
| [Example-Practitioner-Update](Practitioner-IPC.00147433.BC.PRS.md) | Example Practitioner resource for updating License Status. |
| [Example-Practitioner-UpdateLicense](Practitioner-IPC.00763481.BC.PRS.md) | Example Practitioner resource for updating License Status. |
| [Example-PractitionerRole-1-Role-FromPractitioner](PractitionerRole-IPC.00147422.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-PractitionerRole-1-Role-FromPractitioner-Response](PractitionerRole-IPC.00147622.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-PractitionerRole-1-Role-FromPractitioner-Response-test](PractitionerRole-IPC.00147699.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-PractitionerRole-1-Role-FromPractitioner-Update-Response](PractitionerRole-IPC.00147633.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-PractitionerRole-1-Role-Update](PractitionerRole-IPC.00763481.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-PractitionerRole-2-OrgRef-FromPractitioner](PractitionerRole-RELN.123.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship. |
| [Example-PractitionerRole-2-OrgRef-FromPractitioner-Response](PractitionerRole-RELN.124.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship. |
| [Example-PractitionerRole-3-LocRef-FromPractitioner](PractitionerRole-RELN.125.PRS.md) | Example of the PractitionerRole for Practitioner to Location relationship. |
| [Example-PractitionerRole-3-LocRef-FromPractitioner-Response](PractitionerRole-RELN.126.PRS.md) | Example of the PractitionerRole for Practitioner to Location relationship. |
| [Example-PractitionerRole-4-PracRef-FromOrg](PractitionerRole-RELN.127.PRS.md) | Example of the PractitionerRole for Practitioner to Practitioner relationship. |
| [Example-PractitionerRole-4-PracRef-FromOrg-Response](PractitionerRole-RELN.128.PRS.md) | Example of the PractitionerRole for Practitioner to Practitioner relationship. |
| [Example-PractitionerRole-5-OrgRef-FromPractitioner](PractitionerRole-RELN.153.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship. |
| [Example-PractitionerRole-5-PracRef-FromLoc](PractitionerRole-RELN.129.PRS.md) | Example of the PractitionerRole for Practitioner to Practitioner relationship. |
| [Example-PractitionerRole-5-PracRef-FromLoc-Response](PractitionerRole-RELN.130.PRS.md) | Example of the PractitionerRole for Practitioner to Practitioner relationship. |
| [Example-PractitionerRole-Loc3](PractitionerRole-Example-PractitionerRole-Loc3.md) | Example of the PractitionerRole for Practitioner to Location relationship. |
| [Example-PractitionerRole-Loc3-U](PractitionerRole-RELN.1125.PRS.md) | Example of the PractitionerRole for Practitioner to Location relationship. |
| [Example-PractitionerRole-LocRef-FromPractitioner-3](PractitionerRole-RELN.175.PRS.md) | Example of the PractitionerRole for Practitioner to Location relationship. |
| [Example-PractitionerRole-OrgRef-FromPrac-1-Update](PractitionerRole-RELN.12373.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship update. |
| [Example-PractitionerRole-OrgRef-FromPractitioner-1](PractitionerRole-RELN.173.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship. |
| [Example-PractitionerRole-OrgRef-FromPractitioner-2](PractitionerRole-RELN.193.PRS.md) | Example of the PractitionerRole for Practitioner to Organization relationship. |
| [Example-PractitionerRole-Role-FromPrac-CPSID](PractitionerRole-Example-PractitionerRole-Role-FromPrac-CPSID.md) | Example of the PractitionerRole with Speciality. |
| [Example-PractitionerRole-Role-Update-Specialty](PractitionerRole-IPC.00147433.BC.PRS.md) | Example of the PractitionerRole with Speciality. |
| [Example-Qualification-Organization](Organization-Example-Qualification-Organization.md) | Example of an organization's qualifications. |
| [Example-Request-Update-Organization](Parameters-Example-Request-Update-Organization.md) | Example Parameters to update an Organizational Provider. |
| [Example-UpdateLocationWithLinks-Bundle](Bundle-Example-UpdateLocationWithLinks-Bundle.md) | An example of bundle that is updating a location. |
| [Example-UpdateOrganization-Bundle](Bundle-Example-UpdateOrganization-Bundle.md) | Example of a Bundle of resources that are needed to update an Organization. |
| [Example-UpdateOrganization-Bundle-Response](Bundle-Example-UpdateOrganization-Bundle-Response.md) | Example of a Bundle of resources representing a Organization Response. |
| [Example-UpdatePractitioner-Batch-Bundle-Response](Bundle-Example-UpdatePractitioner-Batch-Bundle-Response.md) | Example of a bundle of resources sent when responding to a practitioner update. |
| [Example-UpdatePractitioner-Bundle](Bundle-Example-UpdatePractitioner-Bundle.md) | Example of a bundle to update an Indivivdual Provider. |
| [Example-UpdatePractitioner-Bundle-Response](Bundle-Example-UpdatePractitioner-Bundle-Response.md) | Example of a bundle of resources sent when responding to a practitioner update. |
| [Example-UpdatePractitioner-LicenseStatus-Bundle](Bundle-Example-UpdatePractitioner-LicenseStatus-Bundle.md) | Example of a bundle to update an Indivivdual Provider's License Status. |

