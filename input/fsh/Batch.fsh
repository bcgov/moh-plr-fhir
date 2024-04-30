Profile: BCBatchBundle
Parent: Bundle
Id: bc-batch-bundle
Description: "A Bundle that is used in the PLR Batch operation."
* ^status = #draft
* type 1..1 MS
* type = #batch (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 1..1 MS
* entry.request.method 1..1 MS
* entry.request.method = #PUT
* entry.request.url 1..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Organization."
* entry contains Practitioner 0..* MS and Organization 0..* MS and Location 0..* MS
* entry[Practitioner].resource only BCPractitionerBundle
* entry[Organization].resource only BCOrganizationBundle
* entry[Location].resource only BCLocationBundle


