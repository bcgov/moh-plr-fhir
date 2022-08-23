Profile: BCLocation
Parent: Location
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
* entry contains Location 1..* MS and OrganizationAffiliation 0..* MS and PractitionerRole 0..* MS and OperationOutcome 0..1 MS
* entry[OperationOutcome].resource only BCOperationOutcome
* entry[Location].resource only BCLocation
* entry[OrganizationAffiliation].resource only BCOrganizationAffiliation
* entry[PractitionerRole].resource only BCPractitionerRole


Instance: Example-AddPractitioner-WorkLocation
InstanceOf: BCLocation
Description: "Example of a Location (Facility) that is the work location for a Practitioner."
* extension[facilityDetails].extension[ownerName].valueString = "OPERATOR NAME"
* extension[facilityDetails].extension[period].valuePeriod.start = "2000-01-01"
* extension[serviceArea].valueCodeableConcept = http://example.org/CodeSystem/HealthServiceAreas#MAINLAND
* extension[mailingAddress].valueAddress = Example-Address-Valid
* identifier.system = $PLRWorkLocationID
* identifier.value = "1"
* name = "WORKLOCATIONDETAILS_WORKLOCATION NAME SAMPLE TEXT"
* name.extension[period].valuePeriod.start = "2000-01-01"
* telecom[0].system = #email
* telecom[0].value = "joe@gmail.com"
* telecom[0].period.start = "2000-01-01"
* telecom[0].period.end = "2020-01-01"
* telecom[0].extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* telecom[1].system = #phone
* telecom[1].value = "2509876555"
* telecom[1].period.start = "2000-01-01"
* telecom[1].period.end = "2020-01-01"
* telecom[1].extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.code = #HC
* address = Example-Address-Valid

