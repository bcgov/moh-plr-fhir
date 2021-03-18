Instance: FullPractitionerQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a provider and will return the information for that provider without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-full-practitioner-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-full-practitioner-query"
* name = "FullPractitionerQuery"
* title = "Full Query for a practitioner"
* status = #draft
* kind = #query
* code = #full
* resource[0] = #Practitioner
* system = false
* type = true
* instance = true
* parameter[0].name = #surname
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for practitioners with the specified surname."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #given
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Search for practitioners with the specified given name."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #status
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Search for practitioners with a license that has the specified status."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #address-city
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Search for practitioners with an address that includes the given city."
* parameter[3].type = #string
* parameter[3].searchType = #string
* parameter[4].name = #gender
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Search for practitioners with the specified gender."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #role
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Search for practitioners that have an associated PractitionerRole code with the specified value."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #language
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Search for practitioners who can communicate with the specified language code."
* parameter[6].type = #string
* parameter[6].searchType = #token
* parameter[7].name = #expertise
* parameter[7].use = #in
* parameter[7].min = 0
* parameter[7].max = "1"
* parameter[7].documentation = "Search for practitioners with a qualification that matches the specified expertise."
* parameter[7].type = #string
* parameter[7].searchType = #token
* parameter[8].name = #status-reason
* parameter[8].use = #in
* parameter[8].min = 0
* parameter[8].max = "1"
* parameter[8].documentation = "Search for practitioners with a license that has the specified status reason."
* parameter[8].type = #string
* parameter[8].searchType = #token
* parameter[9].name = #organization-name
* parameter[9].use = #in
* parameter[9].min = 0
* parameter[9].max = "1"
* parameter[9].documentation = "Search for practitioners associated with an organization with the specified name."
* parameter[9].type = #string
* parameter[9].searchType = #string

Instance: FullOrganizationFacilityQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an organization or facility and will return the information for that organization or facility without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-full-organization-facility-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-full-organization-facility-query"
* name = "FullOrganizationFacilityQuery"
* title = "Full Query for an organization or location"
* status = #draft
* kind = #query
* code = #full
* resource[0] = #Organization
* resource[1] = #Location
* system = false
* type = true
* instance = true
* parameter[0].name = #name
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for organizations or locations with the specified name."
* parameter[0].type = #string
* parameter[0].searchType = #string

Instance: DereferencePractitionerQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a provider and will return the information for that provider along with any instances that can be found by following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-dereference-practitioner-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-dereference-practitioner-query"
* name = "DereferencePractitionerQuery"
* title = "Dereferenced Query for a Practitioner"
* status = #draft
* kind = #query
* code = #dereference
* resource[0] = #Practitioner
* system = false
* type = true
* instance = true
* parameter[0].name = #surname
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for practitioners with the specified surname."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #given
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Search for practitioners with the specified given name."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #status
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Search for practitioners with a license that has the specified status."
* parameter[2].type = #string
* parameter[2].searchType = #token
* parameter[3].name = #address-city
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Search for practitioners with an address that includes the given city."
* parameter[3].type = #string
* parameter[3].searchType = #string
* parameter[4].name = #gender
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Search for practitioners with the specified gender."
* parameter[4].type = #string
* parameter[4].searchType = #token
* parameter[5].name = #role
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Search for practitioners that have an associated PractitionerRole code with the specified value."
* parameter[5].type = #string
* parameter[5].searchType = #token
* parameter[6].name = #language
* parameter[6].use = #in
* parameter[6].min = 0
* parameter[6].max = "1"
* parameter[6].documentation = "Search for practitioners who can communicate with the specified language code."
* parameter[6].type = #string
* parameter[6].searchType = #token
* parameter[7].name = #expertise
* parameter[7].use = #in
* parameter[7].min = 0
* parameter[7].max = "1"
* parameter[7].documentation = "Search for practitioners with a qualification that matches the specified expertise."
* parameter[7].type = #string
* parameter[7].searchType = #token
* parameter[8].name = #status-reason
* parameter[8].use = #in
* parameter[8].min = 0
* parameter[8].max = "1"
* parameter[8].documentation = "Search for practitioners with a license that has the specified status reason."
* parameter[8].type = #string
* parameter[8].searchType = #token
* parameter[9].name = #organization-name
* parameter[9].use = #in
* parameter[9].min = 0
* parameter[9].max = "1"
* parameter[9].documentation = "Search for practitioners associated with an organization with the specified name."
* parameter[9].type = #string
* parameter[9].searchType = #string

Instance: DereferenceOrganizationFacilityQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an organization or facility and will return the information for that organization or facility along with any instances that can be found by following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-dereference-organization-facility-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-dereference-organization-facility-query"
* name = "DereferenceOrganizationFacilityQuery"
* title = "Dereference Query for an organization or location"
* status = #draft
* kind = #query
* code = #dereference
* resource[0] = #Organization
* resource[1] = #Location
* system = false
* type = true
* instance = true
* parameter[0].name = #name
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for organizations or locations with the specified name."
* parameter[0].type = #string
* parameter[0].searchType = #string

Profile: BCBatchBundle
Parent: Bundle
Id: bc-batch-bundle
Description: "A Bundle that is used in the PLR Batch operation."
* type 1..1 MS
* type = #batch (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 1..1 MS
* entry.search 0..0
* entry.request 1..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Organization."
* entry contains Practitioner 0..* MS and Organization 0..* MS and Location 0..* MS
* entry[Practitioner].resource only BCPractitionerBundle
* entry[Organization].resource only BCOrganizationBundle
* entry[Location].resource only BCLocationBundle

Instance: Example-Batch-Bundle
InstanceOf: BCBatchBundle
Description: "An example of a Batch Bundle that contains one each of a Practitioner bundle, Organization bundle, and a Location bundle."
* type = #batch
* entry[0].fullUrl = "http://plr.moh.bc.ca/fhir/Bundle/12345"
* entry[0].resource = Example-AddPractitioner-Bundle
* entry[0].request.method = #POST
* entry[0].request.url = "http://plr.moh.bc.ca/fhir/Bundle"
* entry[1].fullUrl = "http://plr.moh.bc.ca/fhir/Bundle/23456"
* entry[1].resource = Example-AddOrganization-Bundle
* entry[1].request.method = #POST
* entry[1].request.url = "http://plr.moh.bc.ca/fhir/Bundle"
* entry[2].fullUrl = "http://plr.moh.bc.ca/fhir/Bundle/34567"
* entry[2].resource = Example-AddLocation-Bundle
* entry[2].request.method = #POST
* entry[2].request.url = "http://plr.moh.bc.ca/fhir/Bundle"

