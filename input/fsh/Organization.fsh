Profile: BCOrganization
//Parent: Organization
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-organization
Id: bc-organization
Description: "General constraints on the Organization resource for use in the BC Provider Registry project."
* identifier 0..* MS
* identifier only BCIdentifier
* active MS
* active = true
* type MS
* type from OrganizationRoleVS (required)
* name 1..1 MS
* name.extension contains 
	NameUseExtension named use 0..1 MS and 
	PeriodExtension named period 0..1 MS and
	EndReasonExtension named endReason 0..1 MS and
        OwnerExtension named owner 0..1 MS
* telecom only BCContactPoint 
* telecom MS
* address only BCAddress
* address MS
* contact MS
  * purpose MS
  * name MS
  * telecom MS
  * address MS
* extension contains LicenseStatusExtension named status 0..* MS and
	ConfidentialityExtension named confidentiality 0..1 MS and
	NoteExtension named note 0..* MS and
  PrimaryCareClinicExtension named primaryCareDetails 0..1 MS and
  ClinicPayeeNumberExtension named clinicPayeeNumber 0..* MS and
  HoursOfOperationExtension named clinicHoursOfOperation 0..1 MS

Invariant: invariant-rltn-2
Description: "One participating organization or one location allowed; not both."
Expression: "participatingOrganization.count()=1 xor location.count()=1"
Severity: #error

Profile: BCOrganizationAffiliation
//Parent: OrganizationAffiliation
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-organizationaffiliation
Id: bc-organization-affiliation
Description: "General constraints on the OrganizationAffiliation resource for use in the BC Provider Registry project."
* obeys invariant-rltn-2
* identifier 0..*  MS
* active MS
* period MS
* organization 1..1 MS
* organization only Reference(BCOrganization)
* participatingOrganization MS
* participatingOrganization only Reference(BCOrganization)
* participatingOrganization.extension 
* extension contains EndReasonExtension named endReason 0..1 MS
     and OwnerExtension named owner 0..1 MS
* code 1..1 MS
* location MS
* location only Reference(BCLocation)

Profile: BCOrganizationBundle
Parent: Bundle
Id: bc-organization-bundle
Description: "A bundle that submits Organization and OrganizationAffiliation information."
* obeys invariant-org-bundle-1
* obeys invariant-org-bundle-2
* obeys invariant-org-bundle-3
* obeys invariant-org-bundle-4
* type 1..1 MS
* type = #collection (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 0..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Organization."
* entry contains Organization 1..* MS and OrganizationAffiliation 0..* MS and RoleRelationship 0..* MS
* entry[Organization].resource only BCOrganization
* entry[OrganizationAffiliation].resource only BCOrganizationAffiliation
* entry[RoleRelationship].resource only BCRoleRelationships

Invariant: invariant-org-bundle-1
Description: "In a Organization Bundle, OrganizationAffiliation.organization.identifiers should match other entries' OrganizationAffiliation.organization.identifiers in the Bundle."
Expression: "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).organization.identifier.value.distinct().count() = 1)"
Severity: #warning

Invariant: invariant-org-bundle-2
Description: "In a Organization Bundle, PractitionerRole.organization.identifiers should match other entries' PractitionerRole.organization.identifiers in the Bundle."
Expression: "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).organization.identifier.value.distinct().count() = 1)"
Severity: #warning

Invariant: invariant-org-bundle-3
Description: "In a Organization Bundle, PractitionerRole.organization.identifier should match at least one identifier in Organization."
Expression: "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).organization.identifier.value.distinct() in Bundle.entry.resource.ofType(Organization).identifier.value)"
Severity: #error

Invariant: invariant-org-bundle-4
Description: "In a Organization Bundle, OrganizationAffiliation.organization.identifier should match at least one identifier in Organization."
Expression: "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).organization.identifier.value.distinct() in Bundle.entry.resource.ofType(Organization).identifier.value)"
Severity: #error


