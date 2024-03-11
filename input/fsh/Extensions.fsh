Extension: FacilityDetailsExtension
Id: bc-facility-details-extension
Title: "BC Facility Details Extension"
Description: "Provides the details of a facility as represented by a FHIR location."
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Location"
* extension contains campusOfCare 0..1 MS and 
     operatorName 0..1 MS and 
     ownerName 0..1 MS and 
     contactName 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[campusOfCare].value[x] only string
* extension[campusOfCare].value[x] 1..1 MS
* extension[operatorName].value[x] only string
* extension[operatorName].value[x] 1..1 MS
* extension[ownerName].value[x] only string
* extension[ownerName].value[x] 1..1 MS
* extension[contactName].value[x] only string
* extension[contactName].value[x] 1..1 MS

// Health Service Area extensions
Extension: HealthServiceArea
Id: bc-facility-health-service-area-extension
Title: "BC Facility Health Service Area Extension"
Description: "A wrapper extension that will allow to list all the health service area, including the PCN and the Community Health Service Area."
* ^context.type = #element
* ^context.expression = "Location"
* extension contains HealthAuthorityExtension named HA 0..1 MS and 
     HealthServiceDeliveryAreaExtension named HSDA 0..1 MS and
     LocalHealthAreaExtension named LHA 0..1 MS and
     CommunityHealthServiceAreaExtension named CHSA 0..1 MS and
     PrimaryCareNetworkExtension named PCN 0..1 MS

Extension: HealthAuthorityExtension
Id: bc-facility-health-authority-extension
Title: "BC Facility Health Authority Area Extension"
Description: "A code that represents the health authority area that the location is a part of."
* ^context.type = #element
* ^context.expression = "Extension"
* value[x] only string
* value[x] 1..1 MS

Extension: HealthServiceDeliveryAreaExtension
Id: bc-facility-health-service-delivery-area-extension
Title: "BC Facility Health Service Delivery Area Extension"
Description: "A code that represents the Health Service Delivery Area (HSDA)that the location is a part of."
* ^context.type = #element
* ^context.expression = "Extension"
* value[x] only string
* value[x] 1..1 MS

Extension: LocalHealthAreaExtension
Id: bc-facility-local-health-area-extension
Title: "BC Facility Local Health Area Extension"
Description: "A code that represents the Local Health Area (LHA) that the location is a part of."
* ^context.type = #element
* ^context.expression = "Extension"
* value[x] only string
* value[x] 1..1 MS

Extension: CommunityHealthServiceAreaExtension
Id: bc-facility-community-health-area-extension
Title: "BC Facility Community Health Service Area Extension"
Description: "A code that represents the Community Health Service Area (CHSA) that the location is a part of."
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains code 1..1 MS and 
     name 1..1 MS 
* extension[code].value[x] only Identifier
* extension[code].value[x] 1..1 MS
* extension[name].value[x] only string
* extension[name].value[x] 1..1 MS

Extension: PrimaryCareNetworkExtension
Id: bc-facility-primary-care-network-extension
Title: "BC Facility Primary Care Network Extension"
Description: "A code that represents the Primary Care Network (PCN) that the location is a part of."
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains code 1..1 MS and 
     name 0..1 MS 
* extension[code].value[x] only Identifier
* extension[code].value[x] 1..1 MS
* extension[name].value[x] only string
* extension[name].value[x] 0..1 MS

// Primary Care Properties
Extension: AvailabilityExtension
Id: bc-availability-extension
Title: "Extension to represent Availability, or hours of operation, for clinic, or other Profiles"
Description: "Can represent the Available time or the Not Avaialble details"
* ^context.type = #element
* ^context.expression = "Organization"
* extension contains AvailableTimeExtension named availableTime 0..* MS and
     NotAvailableExtension named notAvailableTime 0..* MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: AvailableTimeExtension
Id: bc-availableTime-extension
Title: "Extension to represent the available Time, or hours of operation, for clinic, or other Profiles"
Description: "Can represent the Available time"
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains daysOfWeek 0..* MS and
     availableStartTime 0..1 MS and
     availableEndTime 0..1 MS and
     allDay 0..1 MS 
* extension[daysOfWeek].value[x] only code
* extension[daysOfWeek].value[x] from http://hl7.org/fhir/ValueSet/days-of-week (required)
* extension[availableStartTime].value[x] only time
* extension[availableStartTime].value[x] 0..1 MS
* extension[availableEndTime].value[x] only time
* extension[availableEndTime].value[x] 0..1 MS
* extension[allDay].value[x] only boolean
* extension[allDay].value[x] 0..1 MS

Extension: NotAvailableExtension
Id: bc-not-available-extension
Title: "Extension to represent the details when an item is NOT available for clinic, or other Profiles"
Description: "Can represent the Not Avaialble details"
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains description 0..1 MS and
     during 0..1 MS
* extension[description].value[x] only string
* extension[description].value[x] 0..1 MS
* extension[during].value[x] only Period
* extension[during].value[x] 0..1 MS

Extension: ClinicPayeeNumberExtension
Id: bc-organization-clinic-payee-number-extension
Title: "Extension to represent the Clinic Payee number."
Description: "The (Primary Care) Clinic Payee number"
* ^context.type = #element
* ^context.expression = "Organization"
* extension contains payeeNumber 1..1 MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[payeeNumber].value[x] only string
* extension[payeeNumber].value[x] 1..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: ClinicOwnershipTypeExtension
Id: bc-organization-clinic-ownership-type-extension
Title: "Extension to represent the Clinic Ownership type."
Description: "The (Primary Care) Clinic Ownership type, the expected value is one from Health Authority Owned/Operated, First Nation Health Authority Owned/Operated, Physician Owned/Operated, Non-Profit Society, Non-Physician Corporation, Other"
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains ownershipType 1..1 MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[ownershipType].value[x] only CodeableConcept
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: ClinicServiceDeliveryTypeExtension
Id: bc-organization-clinic-service-delivery-type-extension
Title: "Extension to represent the Clinic Service Delivery type."
Description: "The (Primary Care) Clinic Service Delivery type, the expected value is one from Longitudinal, Episodic, and Mixed"
* ^context.type = #element
* ^context.expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* extension contains serviceDeliveryType 1..1 MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[serviceDeliveryType].value[x] only CodeableConcept
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: ClinicTypeExtension
Id: bc-organization-clinic-type-extension
Title: "Extension to represent the Clinic type."
Description: "The (Primary Care) Clinic type, the expected value is one from UPCC, FNPCI, NPCC, CHC, Walk-In/Episodic Care Clinic, Family Practice, Longitudinal Primary Care Practice, Hybrid Primary Care Practice "
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains clinicType 1..1 MS and
     identifier 0..1 MS and
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[clinicType].value[x] only CodeableConcept
* extension[clinicType].value[x] 1..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: ClinicOwnerExtension
Id: bc-organization-clinic-owner-extension
Title: "Extension to represent clinic Owners."
Description: "The (Primary Care) Clinic Owner - still pending some detailed requirements"
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains clinicOwner 1..1 MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[clinicOwner].value[x] only string
* extension[clinicOwner].value[x] 1..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: PrimaryCareInitiativeExtension
Id: bc-organization-pci-extension
Title: "Extension to indicate if the clinic is part of the Primary Care Initiative."
Description: "Flag that indicates if (Primary Care) Clinic is part of the PrimaryCare Initiative. not all PC clinic are part of this initiative"
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains pciFlag 1..1 MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[pciFlag].value[x] only boolean
* extension[pciFlag].value[x] 1..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: ClinicLegalNameExtension
Id: bc-organization-clinic-legal-name-extension
Title: "Extension for the clinic business legal name."
Description: "The clinic business lagal name"
* ^context.type = #element
* ^context.expression = "Extension"
* extension contains clinicLegalName 1..1 MS and
     identifier 0..1 MS and 
     PeriodExtension named period 1..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* extension[clinicLegalName].value[x] only string
* extension[clinicLegalName].value[x] 1..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS

Extension: PrimaryCareClinicExtension
Id: bc-organization-primary-care-clinic-extension
Title: "Extension for BC Organization to add Primary Care Clinic details"
Description: "A wrapper extension that will allow to add the Primary Care Clinic details."
* ^context.type = #element
* ^context.expression = "Organization"
* extension contains ClinicTypeExtension named clinicType 0..1 MS and 
     ClinicOwnershipTypeExtension named clinicOwnershipType 0..1 MS and
     ClinicServiceDeliveryTypeExtension named serviceDeliveryType 0..1 MS and
     ClinicOwnerExtension named clinicOwners 0..* MS and
     PrimaryCareInitiativeExtension named pciFlag 0..1 MS and 
     ClinicLegalNameExtension named clinicLegalName 0..1 MS

Extension: PhysicalAddress
Id: bc-facility-physical-address-extension
Title: "BC Facility Physical Address Extension"
Description: "An optional physical address for the facility."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only BCAddress 
* value[x] ^short = "Physical address only, of the building Location, so no unit number"
* value[x] ^definition = "An address expressed using postal conventions (as opposed to GPS or other location definition formats). This data type is to used to convey addresses for visiting locations which might not be valid for mail delivery."
* value[x] 1..1 MS

Extension: RelationshipTypeExtension
Id: bc-relationship-type-extension
Title: "BC Practitioner to Organization or Practitioner to Practitioner Type Extension."
Description: "The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only CodeableConcept
* value[x] 1..1 MS

Extension: LocationRelationshipTypeExtension
Id: bc-location-relationship-type-extension
Title: "BC Practitioner to Location Type Extension."
Description: "The relationship type of a Practitioner to Location relationship."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only CodeableConcept
* value[x] 1..1 MS

Extension: SpecialtySourceExtension
Id: bc-specialty-source-extension
Title: "BC Specialty Source Extension"
Description: "The specialty source."
* ^context.type = #element
* ^context.expression = "PractitionerRole.specialty"
* value[x] only string
* value[x] 1..1 MS

Extension: DeathDateExtension
Id: bc-practitioner-deathdate-extension
Title: "BC Practitioner Date of Death Extension"
Description: "The Date of Death of a Practitioner."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only dateTime
* value[x] 1..1 MS

Extension: BirthTimeExtension
Id: bc-birthtime-extension
Title: "BC Birth Time Extension"
Description: "Adds birth time to the birth date."
* ^context.type = #element
* ^context.expression = "Practitioner.birthDate"
* value[x] only dateTime
* value[x] 1..1 MS

Extension: BirthPlaceExtension
Id: bc-birthplace-extension
Title: "BC Birth Place Extension"
Description: "Captures the place where a patient/practitioner/person was born."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Address
* value[x] 1..1 MS

Extension: ConfidentialityExtension
Id: bc-confidentiality-extension
Title: "BC Confidentiality Extension"
Description: "Indicates the confidentiality of a BC provider's (practitioner or organization) information."
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* extension contains code 1..1 MS and 
      PeriodExtension named period 1..1 MS and 
      EndReasonExtension named endReason 0..1 MS and
      OwnerExtension named owner 0..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1 MS
* extension[code].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification (required) // this VS could be updated?

Extension: PractitionerRelationshipExtension
Id: bc-practitioner-relationship-extension
Title: "BC Practitioner to Practitioner Relationship Extension"
Description: "Allows for relationships of practitioners to practitioners without needing CareTeam semantics."
* ^context.type = #element
* ^context.expression = "Practitioner"
* extension contains 
          PeriodExtension named period 1..1 MS and
          targetPractitioner 1..1 MS and
          relationshipType 1..1 MS and 
          logicalId 0..1 MS and 
          EndReasonExtension named endReason 0..1 MS and
          OwnerExtension named owner 0..1 MS
* extension[targetPractitioner].value[x] only Reference(BCPractitioner)
* extension[targetPractitioner].value[x] 1..1 MS
* extension[relationshipType].value[x] only CodeableConcept
* extension[relationshipType].value[x] 1..1 MS
* extension[logicalId].value[x] 0..1 MS
* extension[logicalId].value[x] only string 

Extension: PractitionerDiscplinaryActionExtension
Id: bc-practitioner-disciplinary-action-extension
Title: "BC Practitioner Disciplinary Actions Extension"
Description: "Provides details of disciplinary actions against the provider."
* ^context.type = #element
* ^context.expression = "Practitioner"
* extension contains identifier 0..1 MS 
        and description 1..1 MS and 
        archiveDate 1..1 MS and 
        displayFlag 1..1 MS and 
        PeriodExtension named period 1..1 MS and 
        EndReasonExtension named endReason 0..1 MS and
        OwnerExtension named owner 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 0..1 MS
* extension[description].value[x] only string
* extension[description].value[x] 1..1 MS
* extension[archiveDate].value[x] only dateTime
* extension[archiveDate].value[x] 1..1 MS
* extension[displayFlag].value[x] only boolean
* extension[displayFlag].value[x] 1..1 MS

Extension: NoteExtension
Id: bc-note-extension
Title: "BC Notes Extension"
Description: "Notes about the practitioner/location/organization."
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "Location"
* extension contains identifier 1..1 MS and 
      text 1..1 MS and 
      PeriodExtension named period 1..1 MS and 
      EndReasonExtension named endReason 0..1 MS and
      OwnerExtension named owner 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS
* extension[text].value[x] only string
* extension[text].value[x] 1..1 MS

Extension: PractitionerConditionExtension
Id: bc-practitioner-condition-extension
Title: "BC Practitioner Conditions Extension"
Description: "Conditions on the provider's role"
* ^context.type = #element
* ^context.expression = "Practitioner"
* extension contains identifier 0..1 MS and  
        restriction 1..1 MS and 
        restrictionText 0..1 MS and 
        code 1..1 MS and 
        PeriodExtension named period 1..1 MS and
        EndReasonExtension named endReason 0..1 MS and
        OwnerExtension named owner 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 0..1 MS
* extension[restriction].value[x] only boolean
* extension[restriction].value[x] 1..1 MS
* extension[restrictionText].value[x] only string
* extension[restrictionText].value[x] 0..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1 MS

Extension: PractitionerQualificationExtension
Id: bc-practitioner-qualification-extension
Title: "BC Practitioner Qualification Extension"
Description: "The qualifications extensions."
* ^context.type = #element
* ^context.expression = "Practitioner.qualification"
* extension contains designation 1..1 MS and 
       registrationNumber 0..1 MS and 
       equivalencyFlag 1..1 MS and 
       issuedDate 0..1 MS
* extension[designation].value[x] only string
* extension[designation].value[x] 1..1 MS
* extension[registrationNumber].value[x] only string
* extension[registrationNumber].value[x] 0..1 MS
* extension[equivalencyFlag].value[x] only boolean
* extension[equivalencyFlag].value[x] 1..1 MS
* extension[issuedDate].value[x] only dateTime
* extension[issuedDate].value[x] 0..1 MS

Extension: LicenseStatusExtension
Id: bc-license-status-extension
Title: "BC License Status Extension"
Description: "Tracking the status and changes to the status of a practitioner/organization license."
* ^context.type = #element
* ^context.expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* extension contains statusCode 1..1 MS and 
       statusReasonCode 1..1 MS and 
       statusClassCode 1..1 MS and 
       period 1..1 MS and 
       EndReasonExtension named endReason 0..1 MS and
       OwnerExtension named owner 0..1 MS
* extension[statusCode].value[x] only CodeableConcept
* extension[statusCode].value[x] from LicenseStatusVS (required)
* extension[statusCode].value[x] 1..1 MS
* extension[statusReasonCode].value[x] only CodeableConcept
* extension[statusReasonCode].value[x] 1..1 MS
* extension[statusReasonCode].value[x] from LicenseReasonVS (required)
* extension[statusClassCode].value[x] only CodeableConcept
* extension[statusClassCode].value[x] 0..1 MS
* extension[statusClassCode].value[x] ^short = "AE | LIC"
* extension[statusClassCode].value[x] from LicenseStatusClassVS (required)
* extension[period].value[x] only Period
* extension[period].value[x] 1..1 MS


