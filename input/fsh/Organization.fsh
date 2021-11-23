Profile: BCOrganization
Parent: Organization
Id: bc-organization
Description: "General constraints on the Organization resource for use in the BC Provider Registry project."
* identifier 0..* MS
* identifier only BCIdentifier
* active MS
* type MS
* name 1..1 MS
* name.extension contains NameUseExtension named use 0..1 MS and 
	PeriodExtension named period 0..1 MS and
	EndReasonExtension named endReason 0..1 MS
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
* location.extension contains EndReasonExtension named endReason 0..1 MS

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
* type = #transaction (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 1..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Organization."
* entry contains Organization 1..* MS and OrganizationAffiliation 0..* MS and PractitionerRole 0..* MS
* entry[Organization].resource only BCOrganization
* entry[OrganizationAffiliation].resource only BCOrganizationAffiliation
* entry[PractitionerRole].resource only BCPractitionerRole

Instance: Example-AddOrganization-Bundle
InstanceOf: BCOrganizationBundle
Description: "Example of a Bundle of resources that are needed to create an Organization."
* type = #transaction
* entry[0].fullUrl = "http://plr.moh.bc.ca/fhir/Organization/12345"
* entry[0].resource = Example-AddOrganization-Organization
* entry[0].request.method = #POST
* entry[0].request.url = "http://plr.moh.bc.ca/fhir/Organization"
* entry[1].fullUrl = "http://plr.moh.bc.ca/fhir/OrganizationAffiliation/12345"
* entry[1].resource = Example-AddOrganization-OrganizationAffiliation
* entry[1].request.method = #POST
* entry[1].request.url = "http://plr.moh.bc.ca/fhir/OrganizationAffiliation"

Instance: Example-AddOrganization-Organization
InstanceOf: BCOrganization
Description: "Example of an Organization that is being created."
* identifier[0].system = "urn:oid:2.16.840.1.113883.3.40.2.3"
* identifier[0].value = "CPN.00147422.BC.PRS"
* identifier[1].system = "urn:oid:2.16.840.1.113883.3.40.2.8"
* identifier[1].value = "IPC.00147422.BC.PRS"
* identifier[2].system = "urn:oid:2.16.840.1.113883.3.40.2.23"
* identifier[2].value = "1000095892"
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* address.use = #work
* address.type = #postal
* address.line = "2541 Townsend Rd"
* address.city = "Sooke"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V4R8T8"
* address.period.start = "2014-01-31T00:00:00-07:00"
* telecom[0].use = #work
* telecom[0].system = #phone
* telecom[0].value = "7786428585"
* telecom[0].period.start = "2014-01-31T00:00:00-07:00"
* active = true

Instance: Example-AddOrganization-OrganizationAffiliation
InstanceOf: BCOrganizationAffiliation
Description: "Example of a relationship between an Organization and its Locations (facilities)."
* active = true
* period.start = "1989-04-04T00:00:00-07:00"
* organization = Reference(Example-AddOrganization-Organization)
* location = Reference(Example-AddOrganization-Location)
