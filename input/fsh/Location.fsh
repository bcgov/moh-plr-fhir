Profile: BCLocation
//Parent: Location
Parent: http://hl7.org/fhir/ca/baseline/StructureDefinition/profile-location
Id: bc-location
Description: "General constraints on the Location resource for use in the BC Provider Registry project."
* identifier only BCIdentifier
* identifier 0..* MS
* physicalType 1..1 MS
* physicalType ^short = "bu is the only allowed code"
* physicalType.coding.code = #bu (exactly)
* physicalType.coding.code 1..1
* status
* name 0..1 MS
* name.extension contains PeriodExtension named period 1..1 MS 
	and EndReasonExtension named endReason 0..1 MS
	and OwnerExtension named owner 0..1 MS
* alias MS
* description MS
* telecom only BCContactPoint 
* telecom MS
* address only BCAddress 
* address 0..1 MS
* position MS
  * longitude MS
  * latitude MS
* extension contains NoteExtension named note 0..* MS and
	FacilityDetailsExtension named facilityDetails 0..1 MS and
	HealthServiceArea named serviceArea 0..1 MS and
	PhysicalAddress named physicalAddress 0..1 MS

Profile: BCLocationBundle
Parent: Bundle
Id: bc-location-bundle
Description: "A bundle that submits Location information."
* obeys invariant-loc-bundle-1
* obeys invariant-loc-bundle-2
* obeys invariant-loc-bundle-3
* obeys invariant-loc-bundle-4
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
* entry[PractitionerRole].resource only BCRoleRelationships

Invariant: invariant-loc-bundle-1
Description: "In a Location Bundle, OrganizationAffiliation.location.identifiers should match other entries' OrganizationAffiliation.location.identifiers in the Bundle."
Expression: "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).location.identifier.value.distinct().count() = 1)"
Severity: #warning

Invariant: invariant-loc-bundle-2
Description: "In a Location Bundle, PractitionerRole.location.identifiers should match other entries' PractitionerRole.location.identifiers in the Bundle."
Expression: "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).location.identifier.value.distinct().count() = 1)"
Severity: #warning

Invariant: invariant-loc-bundle-3
Description: "In a Location Bundle, PractitionerRole.location.identifier should match at least one identifier in Location."
Expression: "Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).count() = 0 or (Bundle.entry.select(resource as PractitionerRole).where(meta.profile.endsWith('bc-role-relationships')).location.identifier.value.distinct() in Bundle.entry.resource.ofType(Location).identifier.value)"
Severity: #error

Invariant: invariant-loc-bundle-4
Description: "In a Location Bundle, OrganizationAffiliation.location.identifier should match at least one identifier in Location."
Expression: "Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).count() = 0 or (Bundle.entry.select(resource as OrganizationAffiliation).where(meta.profile.endsWith('bc-organization-affiliation')).location.identifier.value.distinct() in Bundle.entry.resource.ofType(Location).identifier.value)"
Severity: #error



