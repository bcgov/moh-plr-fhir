Profile: BCIdentifier
Parent: Identifier
* extension contains StatusExtension named status 0..* MS

Profile: BCContactPoint
Parent: ContactPoint
* extension contains http://hl7.org/fhir/StructureDefinition/contactpoint-country named country 0..1 MS and 	http://hl7.org/fhir/StructureDefinition/contactpoint-area named areaCode 0..1 MS and
	http://hl7.org/fhir/StructureDefinition/contactpoint-local named local 0..1 MS and
	http://hl7.org/fhir/StructureDefinition/contactpoint-extension named extension 0..1 MS and
	ValidFlagExtension named validFlag 0..1 MS and
	StatusExtension named status 0..* MS
	
Profile: BCAddress
Parent: Address
* extension contains ValidFlagExtension named validFlag 0..1 MS and
	StatusExtension named status 0..* MS

Extension: ValidFlagExtension
Id: bc-valid-flag-extension
Title: "BC Valid Flag Extension"
Description: "Used to indicate if a data element has been validated by the ministry."
* value[x] only code
* valueCode from ValidFlagVS

Profile: BCHumanName
Parent: HumanName
* extension contains ValidFlagExtension named validFlag 0..1 MS and 
	NameUseExtension named use 0..1 MS and 
	PeriodExtension named period 0..1 MS and
	StatusExtension named status 0..* MS

Extension: NameUseExtension
Id: bc-name-use-extension
Title: "BC Name Use Extension"
Description: "Allows for use on a simple name string."
* value[x] only code
* valueCode from http://hl7.org/fhir/ValueSet/name-use (required)

Extension: StatusExtension
Id: bc-status-extension
Title: "BC Status Extension"
Description: "Tracking status codes and the effective dates of those statuses."
* extension contains statusCode 1..1 MS and period 1..1 MS and eventId 1..1 MS and statusReasonCode 1..1 MS and custodianId 0..1 MS
* extension[statusCode].value[x] only code
* extension[statusCode].valueCode from PractitionerStatusVS
* extension[period].value[x] only Period
* extension[statusReasonCode].value[x] only CodeableConcept
* extension[custodianId].value[x] only Identifier
* extension[eventId].value[x] only Identifier

Extension: PeriodExtension
Id: bc-period-extension
Title: "BC Valid Period"
Description: "The period for when the extended element is valid."
* value[x] only Period
