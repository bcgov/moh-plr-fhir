Profile: BCIdentifier
Id: bc-identifier
Parent: Identifier
Description: "Adds an end reason to the identifier."
* extension contains EndReasonExtension named endReason 0..1 MS

Profile: BCContactPoint
Id: bc-contactPoint
Parent: ContactPoint
Description: "Adds an end reason and extra contact information."
* extension contains http://hl7.org/fhir/StructureDefinition/contactpoint-country named country 0..1 MS and 	http://hl7.org/fhir/StructureDefinition/contactpoint-area named areaCode 0..1 MS and
	http://hl7.org/fhir/StructureDefinition/contactpoint-local named local 0..1 MS and
	http://hl7.org/fhir/StructureDefinition/contactpoint-extension named extension 0..1 MS and
	EndReasonExtension named endReason 0..1 MS
	
Profile: BCAddress
Id: bc-address
Parent: Address
Description: "Adds an end reason to the address."
* extension contains EndReasonExtension named endReason 0..1 MS

Profile: BCHumanName
Id: bc-humanName
Parent: HumanName
Description: "Adds an end reason and a use code to a name."
* extension contains NameUseExtension named use 0..1 MS and 
	EndReasonExtension named endReason 0..1 MS

Extension: NameUseExtension
Id: bc-name-use-extension
Title: "BC Name Use Extension"
Description: "Allows for use on a simple name string."
* value[x] only code
* value[x] 1..1 MS
* valueCode from http://hl7.org/fhir/ValueSet/name-use (required)

Extension: EndReasonExtension
Id: bc-end-reason-extension
Title: "BC End Reason Extension"
Description: "Tracking end reasons."
* extension contains endReasonCode 0..1 MS and custodianId 0..1 MS
* extension[endReasonCode].value[x] only CodeableConcept
* extension[endReasonCode].value[x] 1..1 MS
* extension[custodianId].value[x] only Identifier
* extension[custodianId].value[x] 1..1 MS

Extension: PeriodExtension
Id: bc-period-extension
Title: "BC Valid Period Extension"
Description: "The period for when the extended element is valid."
* value[x] only Period
* value[x] 1..1 MS
