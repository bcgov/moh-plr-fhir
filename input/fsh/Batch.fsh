Profile: BCBatchBundle
Parent: Bundle
Id: bc-batch-bundle
Description: "A Bundle that is used in the PLR Batch operation."
* ^status = #active
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
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Practitioner."
* entry contains Practitioner 0..* MS /*and Organization 0..* MS and Location 0..* MS*/
* entry[Practitioner].resource only BCPractitionerBundle
/* entry[Organization].resource only BCOrganizationBundle
* entry[Location].resource only BCLocationBundle*/

Profile: BCBatchReponseBundle
Parent: Bundle
Id: bc-batch-response-bundle
Description: "A Bundle that is used in the PLR Batch operation."
* type 1..1 MS
* type = #batch-response (exactly)
* entry 1..*
* entry.resource 0..1 MS
* entry.search 0..0
* entry.request 0..0
* entry.response 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entities that are returned when creating or updating a BC Practitioner in Batch"
* entry contains Practitioner 0..* MS and OperationOutcome 0..1 MS /*and Organization 0..* MS and Location 0..* MS*/
* entry[Practitioner].resource only BCPractitionerBundle
* entry[Practitioner].response.outcome only BCOperationOutcome
* entry[OperationOutcome].response.outcome only BCOperationOutcome
/* entry[Organization].resource only BCOrganizationBundle
* entry[Location].resource only BCLocationBundle*/


