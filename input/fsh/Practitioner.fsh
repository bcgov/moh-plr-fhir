Profile: BCPractitioner
Parent: Practitioner
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
* qualification.extension contains PractitionerQualificationExtension named qualificationExtension 0..1 MS and 
     EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS
* qualification.identifier MS
* qualification.code MS
* qualification.code from $PracQualification (required)
* qualification.period MS
* qualification.issuer MS
* qualification.issuer only Reference(BCOrganization)
* communication MS
* communication.extension contains PeriodExtension named period 0..1 MS and EndReasonExtension named endReason 0..1 MS and SpecialtySourceExtension named languageSource 0..1 MS and OwnerExtension named owner 0..1 MS
* extension contains PeriodExtension named demographicsPeriod 0..1 MS and 
        EndReasonExtension named demographicsEndReason 0..1 MS and 
        OwnerExtension named demographicsOwner 0..1 MS and
        LicenseStatusExtension named status 0..* MS and 
	DeathDateExtension named deathDate 0..1 MS and 
	BirthPlaceExtension named birthplace 0..1 MS and
	PractitionerConfidentialityExtension named confidentiality 0..1 MS and
	PractitionerRelationshipExtension named relationship 0..* MS and
	PractitionerDiscplinaryActionExtension named disciplinaryAction 0..* MS and
	NoteExtension named note 0..* MS and
	PractitionerConditionExtension named condition 0..* MS

Invariant: invariant-rltn-1
Description: "One organization or one location allowed; not both."
Expression: "organization.count()=1 xor location.count()=1"
Severity: #error

Invariant: invariant-role-1
Description: "The organization and location references are not permitted in this profile."
Expression: "organization.count()=0 and location.count()=0"
Severity: #error

Profile: BCRoleRelationships
Parent: PractitionerRole
Id: bc-role-relationships
Description: "General constraints on the PractitionerRole resource for use in the BC Provider Registry project to describe relationships."
* obeys invariant-rltn-1
* period MS
* practitioner 1..1 MS
* practitioner only Reference(BCPractitioner) 
* extension contains EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS and
     RelationshipTypeExtension named typeExtension 0..1 MS and
     LocationRelationshipTypeExtension named locRelationshipType 0..1 MS
* organization 0..1 MS
* organization only Reference(BCOrganization)
* organization.type 0..0
* code 0..0 
* specialty 0..0
* location 0..1 MS
* location only Reference(BCLocation)
* telecom only BCContactPoint
* telecom MS


Profile: BCPractitionerRole
Parent: PractitionerRole
Id: bc-practitioner-role
Description: "General constraints on the PractitionerRole resource for use in the BC Provider Registry project."
* obeys invariant-role-1
* practitioner 1..1 MS
* practitioner only Reference(BCPractitioner) 
* code MS 
* code from PractitionerRoleVS (required)
* specialty MS
* specialty from ExpertiseVS (required)
* specialty.extension contains
     SpecialtySourceExtension named specialtySource 0..1 MS
     and OwnerExtension named owner 0..1 MS
     and PeriodExtension named period 0..1 MS
     and EndReasonExtension named endReason 0..1 MS
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
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Practitioner."
* entry contains Practitioner 1..1 MS and PractitionerRole 1..1 MS and RoleRelationship 0..* MS and OperationOutcome 0..1 MS
* entry[OperationOutcome].resource only BCOperationOutcome
* entry[Practitioner].resource only BCPractitioner
* entry[PractitionerRole].resource only BCPractitionerRole
* entry[RoleRelationship].resource only BCRoleRelationships

