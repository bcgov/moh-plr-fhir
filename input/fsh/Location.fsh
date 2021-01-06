Profile: BCLocation
Parent: Location
Id: bc-location
Description: "General constraints on the Location resource for use in the BC Provider Registry project."

* identifier only BCIdentifier
* identifier 1..* MS
* status MS
* name 1..1 MS
* name.extension contains StatusExtension named status 0..* MS
* alias MS
* description MS
* mode MS
* type 1..* MS
* telecom only BCContactPoint 
* telecom MS
* address only BCAddress 
* address 1..1 MS
* physicalType MS
* position MS
* position.longitude MS
* position.latitude MS
* managingOrganization MS
* managingOrganization only Reference(BCOrganization)
* partOf MS
* partOf only Reference(BCLocation)
* extension contains NoteExtension named note 0..* MS and
	FacilityDetailsExtension named facilityDetails 0..1 MS and
	CommunityHealthServiceArea named serviceArea 0..1 MS and
	MailingAddress named mailingAddress 0..1 MS

Extension: FacilityDetailsExtension
Id: bc-facility-details-extension
Title: "BC Facility Details Extension"
Description: "Provides the details of a facility as represented by a FHIR location."
* extension contains campusOfCare 0..1 MS and operatorName 0..1 MS and ownerName 0..1 MS and contactName 0..1 MS and StatusExtension named status 0..* MS
* extension[campusOfCare].value[x] only string
* extension[operatorName].value[x] only string
* extension[ownerName].value[x] only string
* extension[contactName].value[x] only string

Extension: CommunityHealthServiceArea
Id: bc-facility-commmunity-health-service-area-extension
Title: "BC Facility Community Health Service Area"
Description: "A code that represents the community health service area that the location is a part of."
* value[x] only CodeableConcept

Extension: MailingAddress
Id: bc-facility-mailing-address
Title: "BC Facility Mailing Address"
Description: "An optional mailing address for the facility."
* value[x] only BCAddress

Instance: Example-AddProvider-WorkLocation
InstanceOf: BCLocation
* identifier.system = "urn:oid:2.16.840.1.113883.3.40.1.10"
* identifier.value = "1"
* name = "WORKLOCATIONDETAILS_WORKLOCATION NAME SAMPLE TEXT"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HD
* telecom[0].use = #work
* telecom[0].system = #email
* telecom[0].value = "joe@gmail.com"
* telecom[0].period.start = "2000-01-01"
* telecom[0].period.end = "2020-01-01"
* telecom[1].use = #home
* telecom[1].system = #phone
* telecom[1].value = "2509876555"
* telecom[1].period.start = "2000-01-01"
* telecom[1].period.end = "2020-01-01"
* address.period.start = "2000-01-01"
* address.period.end = "2020-01-01"
* address.use = #work
* address.type = #postal
* address.line[0] = "19 ST"
* address.line[1] = "ADDRESS ADDRESSLINE2TXT"
* address.line[2] = "ADDRESS ADDRESSLINE3TXT"
* address.city = "VICTORIA"
* address.postalCode = "V6P7B8"
* address.state = "BC"
* address.country = "CA"

Instance: Example-AddOrganization-Location
InstanceOf: BCLocation
* identifier.system = "urn:oid:2.16.840.1.113883.3.40.1.10"
* identifier.value = "111"
* name = "General Hospital"
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP
* telecom[0].use = #work
* telecom[0].system = #fax
* telecom[0].period.start = "1982-03-04T00:00:00-07:00"
* telecom[0].value = "55555555551"
* telecom[1].use = #home
* telecom[1].system = #fax
* telecom[1].period.start = "1981-04-04T00:00:00-07:00"
* telecom[1].value = "55555555555"
* telecom[2].use = #mobile
* telecom[2].system = #url
* telecom[2].period.start = "1991-01-01T00:00:00-07:00"
* telecom[2].value = "ftp://someftp.com"
* address.use = #work
* address.type = #postal
* address.period.start = "1988-10-10T00:00:00-07:00"
* address.line[0] = "wl line 11"
* address.line[1] = "wl line 22"
* address.line[2] = "wl line 33"
* address.city = "wl city 2"
* address.state = "BC"
* address.country = "CA"
* address.postalCode = "V8V 8V8"
