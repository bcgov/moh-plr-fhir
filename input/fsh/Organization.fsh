Profile: BCOrganization
Parent: Organization
Id: bc-organization
Description: "General constraints on the Organization resource for use in the BC Provider Registry project."
* identifier 0..* MS
* identifier only BCIdentifier
* active MS
* type MS
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
* extension contains LicenseStatusExtension named status 0..* MS and
	NoteExtension named note 0..* MS

Profile: BCOrganizationAffiliation
Parent: OrganizationAffiliation
Id: bc-organization-affiliation
Description: "General constraints on the OrganizationAffiliation resource for use in the BC Provider Registry project."
* identifier 0..*  MS
* active MS
* period MS
* organization 1..1 MS
* organization only Reference(BCOrganization)
* participatingOrganization MS
* participatingOrganization only Reference(BCOrganization)
* participatingOrganization.extension contains EndReasonExtension named endReason 0..1 MS
* code MS
* location MS
* location only Reference(BCLocation)
* location.extension contains EndReasonExtension named endReason 0..1 MS and
     OwnerExtension named owner 0..1 MS


Instance: Example-Qualification-Organization
InstanceOf: BCOrganization
Description: "Example of an organization's qualifications."
* name = "CREDENTIAL_CREDENTIALGRANTINGINSTTXT"
* address.city = "CALGARY"
* address.state = "AB"
* address.country = "CA"

Profile: BCOrganizationBundle
Parent: Bundle
Id: bc-organization-bundle
Description: "A bundle that submits Organization and OrganizationAffiliation information."
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
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Organization."
* entry contains Organization 1..* MS and OrganizationAffiliation 0..* MS and PractitionerRole 0..* MS
* entry[Organization].resource only BCOrganization
* entry[OrganizationAffiliation].resource only BCOrganizationAffiliation
* entry[PractitionerRole].resource only BCPractitionerRole


