Profile: BCLocation
//Parent: Location
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-location
Id: bc-location
Description: "General constraints on the Location resource for use in the BC Provider Registry project."
* identifier only BCIdentifier
* identifier 1..* MS
* status MS
* name 1..1 MS
* name.extension contains PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS
* alias MS
* description MS
* telecom only BCContactPoint 
* telecom MS
* address only BCAddress 
* address 1..1 MS
* extension contains NoteExtension named note 0..* MS and
	FacilityDetailsExtension named facilityDetails 0..1 MS and
	CommunityHealthServiceArea named serviceArea 0..1 MS and
	MailingAddress named mailingAddress 0..1 MS

Profile: BCLocationBundle
Parent: Bundle
Id: bc-location-bundle
Description: "A bundle that submits Location information."
* type 1..1 MS
* type = #collection (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 0..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Location."
* entry contains Location 1..* MS and OrganizationAffiliation 0..* MS and PractitionerRole 0..* MS
* entry[Location].resource only BCLocation
* entry[OrganizationAffiliation].resource only BCOrganizationAffiliation
* entry[PractitionerRole].resource only BCPractitionerRole


