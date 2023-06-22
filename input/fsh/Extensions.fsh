Extension: FacilityDetailsExtension
Id: bc-facility-details-extension
Title: "BC Facility Details Extension"
Description: "Provides the details of a facility as represented by a FHIR location."
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

Extension: HealthServiceArea
Id: bc-facility-health-service-area-extension
Title: "BC Facility Health Service Area Extension"
Description: "A code that represents the health service area, including the PCN and the Community Health Service Area that the location is a part of."
* value[x] only Identifier
* value[x] 1..1 MS

Extension: MailingAddress
Id: bc-facility-mailing-address-extension
Title: "BC Facility Mailing Address Extension"
Description: "An optional mailing address for the facility."
* value[x] only BCAddress
* value[x] 1..1 MS

Extension: RelationshipTypeExtension
Id: bc-relationship-type-extension
Title: "BC Practitioner to Organization or Practitioner to Practitioner Type Extension."
Description: "The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship."
* value[x] only CodeableConcept
* value[x] 1..1 MS

Extension: LocationRelationshipTypeExtension
Id: bc-location-relationship-type-extension
Title: "BC Practitioner to Location Type Extension."
Description: "The relationship type of a Practitioner to Location relationship."
* value[x] only CodeableConcept
* value[x] 1..1 MS

Extension: SpecialtySourceExtension
Id: bc-specialty-source-extension
Title: "BC Specialty Source Extension"
Description: "The specialty source."
* value[x] only string
* value[x] 1..1 MS

Extension: DeathDateExtension
Id: bc-practitioner-deathdate-extension
Title: "BC Practitioner Date of Death Extension"
Description: "The Date of Death of a Practitioner."
* value[x] only dateTime
* value[x] 1..1 MS

Extension: BirthTimeExtension
Id: bc-birthtime-extension
Title: "BC Birth Time Extension"
Description: "Adds birth time to the birth date."
* value[x] only dateTime
* value[x] 1..1 MS

Extension: BirthPlaceExtension
Id: bc-birthplace-extension
Title: "BC Birth Place Extension"
Description: "Captures the place where a patient/practitioner/person was born."
* value[x] only Address
* value[x] 1..1 MS

Extension: ConfidentialityExtension
Id: bc-confidentiality-extension
Title: "BC Confidentiality Extension"
Description: "Indicates the confidentiality of a BC provider's (practitioner or organization) information."
* extension contains code 1..1 MS and 
      PeriodExtension named period 1..1 MS and 
      EndReasonExtension named endReason 0..1 MS and
      OwnerExtension named owner 0..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1 MS
* extension[code].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification (required)

Extension: PractitionerRelationshipExtension
Id: bc-practitioner-relationship-extension
Title: "BC Practitioner to Practitioner Relationship Extension"
Description: "Allows for relationships of practitioners to practitioners without needing CareTeam semantics."
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
* extension contains identifier 0..1 MS 
        and description 1..1 MS and 
        PeriodExtension named period 1..1 MS and 
        archiveDate 1..1 MS and 
        displayFlag 1..1 MS and 
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
* extension contains identifier 1..1 MS and 
        PeriodExtension named period 1..1 MS and 
        restriction 1..1 MS and 
        restrictionText 1..1 MS and 
        code 1..1 MS and 
        EndReasonExtension named endReason 0..1 MS and
        OwnerExtension named owner 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS
* extension[restriction].value[x] only boolean
* extension[restriction].value[x] 1..1 MS
* extension[restrictionText].value[x] only string
* extension[restrictionText].value[x] 1..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1 MS

Extension: PractitionerQualificationExtension
Id: bc-practitioner-qualification-extension
Title: "BC Practitioner Qualification Extension"
Description: "The qualifications extensions."
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


