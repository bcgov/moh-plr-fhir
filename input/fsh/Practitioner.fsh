Profile: BCPractitioner
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-practitioner-registry
Id: bc-practitioner
Description: "General constraints on the Practitioner resource for use in the BC Provider Registry project."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.description = "The organization that authorized a qualification."
* contained contains QualificationOrganization 0..* MS
* contained[QualificationOrganization] only BCOrganization
* identifier only BCIdentifier
* identifier 1..* MS
* active MS
* name only BCHumanName 
* name 1..* MS
* telecom only BCContactPoint
* telecom MS
* address only BCAddress 
* address MS
* gender MS
* birthDate MS
* birthDate.extension contains BirthTimeExtension named birthTime 0..1 MS
* qualification MS
* qualification.extension contains PractitionerQualificationExtension named qualificationExtension 1..1 MS and EndReasonExtension named endReason 0..1 MS
* qualification.identifier MS
* qualification.code MS
* qualification.code from $PracQualification (required)
* qualification.period MS
* qualification.issuer MS
* qualification.issuer only Reference(BCOrganization)
* communication MS
* communication.extension contains PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS and SpecialtySourceExtension named languageSource 0..1 MS
* extension contains PeriodExtension named demographicsPeriod 1..1 MS and EndReasonExtension named demographicsEndReason 0..1 MS and 
    LicenseStatusExtension named status 0..* MS and 
	DeathDateExtension named deathDate 0..1 MS and 
	BirthPlaceExtension named birthplace 0..1 MS and
	PractitionerConfidentialityExtension named confidentiality 0..1 MS and
	PractitionerRelationshipExtension named relationship 0..* MS and
	PractitionerDiscplinaryActionExtension named disciplinaryAction 0..* MS and
	NoteExtension named note 0..* MS and
	PractitionerConditionExtension named condition 0..* MS

Profile: BCPractitionerRole
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-practitionerrole-registry
Id: bc-practitioner-role
Description: "General constraints on the PractitionerRole resource for use in the BC Provider Registry project."
* identifier 0..* MS
* active MS
* period MS
* practitioner 1..1 MS
* practitioner only Reference(BCPractitioner) 
* practitioner.extension contains EndReasonExtension named endReason 0..1 MS
  and RelationshipTypeExtension named typeExtension 0..1 MS
* organization MS
* organization only Reference(BCOrganization)
* organization.extension contains EndReasonExtension named endReason 0..1 MS
  and RelationshipTypeExtension named typeExtension 0..1 MS
* organization.type 0..0
* code MS 
* code from PractitionerRoleVS (required)
* specialty MS
* specialty from ExpertiseVS (required)
* specialty.extension contains PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS and SpecialtySourceExtension named specialtySource 0..1 MS
* location MS
* location only Reference(BCLocation)
* location.extension contains EndReasonExtension named endReason 0..1 MS and LocationRelationshipTypeExtension named locRelationshipType 0..1 MS
* telecom only BCContactPoint
* telecom MS

Profile: BCPractitionerBundle
Parent: Bundle
Id: bc-practitioner-bundle
Description: "A bundle that submits Practitioner and PractitionerRole information."
* type 1..1 MS
* type = #collection (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 0..1 MS
* entry.search 0..0
* entry.request 0..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Practitioner."
* entry contains Practitioner 1..1 MS and PractitionerRole 0..* MS
* entry[Practitioner].resource only BCPractitioner
* entry[PractitionerRole].resource only BCPractitionerRole

Instance: Example-AddPractitioner-PractitionerRole
InstanceOf: BCPractitionerRole
Description: "Example of the role that the created practitioner is playing."
* practitioner = Reference(Example-AddPractitioner-Practitioner)
* organization.display = "BC"
* code = $SCPType#MD
* specialty = $PracSpecialty#AMD17
* specialty.extension[period].valuePeriod.start = "2000-01-01"
* specialty.extension[period].valuePeriod.end = "2020-01-01"
* specialty.extension[endReason].extension[endReasonCode].valueCodeableConcept = $PLREndReason#CORR
* specialty.extension[endReason].extension[custodianId].valueIdentifier.assigner.display = "RNA"
* specialty.extension[specialtySource].valueString = "Source"
//* location = Reference(Example-AddPractitioner-WorkLocation)

