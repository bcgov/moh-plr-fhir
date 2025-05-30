Profile: BCIdentifier
Id: bc-identifier
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-identifier
//Parent: Identifier
Description: "Adds an end reason to the identifier."
* extension contains EndReasonExtension named endReason 0..1 MS and
           OwnerExtension named owner 0..1 MS

Profile: BCContactPoint
Id: bc-contactPoint
Parent: ContactPoint
Description: "Adds an end reason and extra contact information."
* use 0..0
* extension contains 
	EndReasonExtension named endReason 0..1 MS and 
	OwnerExtension named owner 0..1 MS and 
	CommunicationPurposeExtension named commPurposeExtension 0..1 MS
	
Profile: BCAddress
Id: bc-address
Parent: Address
Description: "Adds an end reason, communication purpose and validation status to the address."
* use 0..0
* extension contains EndReasonExtension named endReason 0..1 MS and 
    OwnerExtension named owner 0..1 MS and 
    CommunicationPurposeExtension named commPurposeExtension 0..1 MS and
    AddressValidationStatusExtension named validationStatus 0..1 MS

Profile: BCHumanName
Id: bc-humanName
Parent: HumanName
Description: "Adds an end reason and a use code to a name."
* extension contains 
	EndReasonExtension named endReason 0..1 MS and
        OwnerExtension named owner 0..1 MS and 
	http://hl7.org/fhir/StructureDefinition/data-absent-reason named dataAbsentReason 0..1 MS

Extension: NameUseExtension
Id: bc-name-use-extension
Title: "BC Name Use Extension"
Description: "Allows for use on a simple name string."
* ^context.type = #element
* ^context.expression = "string"
* value[x] only code
* value[x] 1..1 MS
* valueCode from http://hl7.org/fhir/ValueSet/name-use (required)

Extension: EndReasonExtension
Id: bc-end-reason-extension
Title: "BC End Reason Extension"
Description: "Tracking end reason."
* ^context.type = #element
* ^context.expression = "Identifier"
* ^context[+].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.qualification"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.communication"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.specialty"
* ^context[+].type = #element
* ^context[=].expression = "Location.name"
* ^context[+].type = #element
* ^context[=].expression = "Organization.name"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "OrganizationAffiliation"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from EndReasonVS (required)

Extension: OwnerExtension
Id: bc-owner-extension
Title: "BC Owner Extension"
Description: "Tracking the owner."
* ^context.type = #element
* ^context.expression = "Identifier"
* ^context[+].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.qualification"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.communication"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.specialty"
* ^context[+].type = #element
* ^context[=].expression = "OrganizationAffiliation"
* ^context[+].type = #element
* ^context[=].expression = "Organization.name"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* ^context[+].type = #element
* ^context[=].expression = "Location.name"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* value[x] only Identifier
* value[x] 1..1 MS

Extension: PeriodExtension
Id: bc-period-extension
Title: "BC Valid Period Extension"
Description: "The period for when the extended element is valid."
* ^context.type = #element
* ^context.expression = "Identifier"
* ^context[+].type = #element
* ^context[=].expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner.communication"
* ^context[+].type = #element
* ^context[=].expression = "PractitionerRole.specialty"
* ^context[+].type = #element
* ^context[=].expression = "Location.name"
* ^context[+].type = #element
* ^context[=].expression = "Organization.name"
* value[x] only Period
* value[x] 1..1 MS

Extension: CommunicationPurposeExtension
Id: bc-communication-purpose-code-extension
Title: "BC Communication Purpose Extension"
Description: "BC extension for communication purpose codes."
* ^context.type = #element
* ^context.expression = "ContactPoint"
* ^context[+].type = #element
* ^context[=].expression = "Address"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from CommunicationPurposeVS (required)

Extension: AddressValidationStatusExtension
Id: bc-address-validation-status-extension
Title: "BC Address Validation Extension"
Description: "BC extension for address validation status codes."
* ^context.type = #element
* ^context.expression = "Address"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from AddressValidationStatusVS (required)
