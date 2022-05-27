Instance: EntityPractitionerQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a practitioner and will return the information for that practitioner without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-entity-practitioner-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-entity-practitioner-query"
* name = "PractitionerEntityQuery"
* title = "Query for a practitioner without returning associations"
* status = #draft
* kind = #query
* code = #entityQuery
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
* parameter[1].name = #given-name
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


Instance: EntityLocationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an location and will return the information for that location without following associations to other practitioner, organizations, or locations."
Usage: #definition
* id = "bc-entity-location-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-entity-location-query"
* name = "LocationEntityQuery"
* title = "Query for a location without returning associations"
* status = #draft
* kind = #query
* code = #entityQuery
* resource[0] = #Location
* system = false
* type = true
* instance = true
* parameter[0].name = #name
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for locations with the specified name."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #address-city
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Search for locations with the specified city."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #healthAuthority
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Search for locations within the specified health authority.  See [this site](https://www2.gov.bc.ca    /gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[2].type = #string
* parameter[2].searchType = #string
* parameter[3].name = #healthServiceDeliveryArea
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Search for locations within the specified health service delivery area.  See [this site](https://www2.gov.bc.ca    /gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[3].type = #string
* parameter[3].searchType = #string
* parameter[4].name = #localHealthArea
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Search for locations within the specified local health area.  See [this site](https://www2.gov.bc.ca    /gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[4].type = #string
* parameter[4].searchType = #string
* parameter[5].name = #communityHealthServiceArea
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Search for locations within the specified local community health service area.  See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[5].type = #string
* parameter[5].searchType = #string


Instance: EntityOrganizationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an organization and will return the information for that organization without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-entity-organization-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-entity-organization-query"
* name = "OrganizationEntityQuery"
* title = "Query for an organization without returning associations"
* status = #draft
* kind = #query
* code = #entityQuery
* resource[0] = #Organization
* system = false
* type = true
* instance = true
* parameter[0].name = #name
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for organizations with the specified name."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #address-city
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Search for organizations with the specified city."
* parameter[1].type = #string
* parameter[1].searchType = #string


Instance: ExtendedPractitionerQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a provider and will return the information for that provider along with any instances that can be found by following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-extended-practitioner-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-extended-practitioner-query"
* name = "PractitionerExtendedQuery"
* title = "Query for a Practitioner that returns associated resources"
* status = #draft
* kind = #query
* code = #extendedQuery
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
* parameter[1].name = #given-name
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

Instance: ExtendedOrganizationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an organization and will return the information for that organization along with any instances that can be found by following associations to other practitioners, organizations, or locations."
Usage: #definition
* id = "bc-extended-organization-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-extended-organization-query"
* name = "OrganizationExtendedQuery"
* title = "Query for an organization that returns associated resources"
* status = #draft
* kind = #query
* code = #extendedQuery
* resource[0] = #Organization
* system = false
* type = true
* instance = true
* parameter[0].name = #name
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for organizations with the specified name."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #address-city
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Search for organizations with the specified city."
* parameter[1].type = #string
* parameter[1].searchType = #string


Instance: ExtendedLocationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an location and will return the information for that location along with any instances that can be found by following associations to other providers, organizations, or location."
Usage: #definition
* id = "bc-extended-location-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-extended-location-query"
* name = "LocationExtendedQuery"
* title = "Query for a location that returns associated resources"
* status = #draft
* kind = #query
* code = #extendedQuery
* resource[0] = #Location
* system = false
* type = true
* instance = true
* parameter[0].name = #name
* parameter[0].use = #in
* parameter[0].min = 0
* parameter[0].max = "1"
* parameter[0].documentation = "Search for locations with the specified name."
* parameter[0].type = #string
* parameter[0].searchType = #string
* parameter[1].name = #address-city
* parameter[1].use = #in
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "Search for locations with the specified city."
* parameter[1].type = #string
* parameter[1].searchType = #string
* parameter[2].name = #healthAuthority
* parameter[2].use = #in
* parameter[2].min = 0
* parameter[2].max = "1"
* parameter[2].documentation = "Search for locations within the specified health authority.  See [this site](https://www2.gov.bc.ca    /gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[2].type = #string
* parameter[2].searchType = #string
* parameter[3].name = #healthServiceDeliveryArea
* parameter[3].use = #in
* parameter[3].min = 0
* parameter[3].max = "1"
* parameter[3].documentation = "Search for locations within the specified health service delivery area.  See [this site](https://www2.gov.bc.ca    /gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[3].type = #string
* parameter[3].searchType = #string
* parameter[4].name = #localHealthArea
* parameter[4].use = #in
* parameter[4].min = 0
* parameter[4].max = "1"
* parameter[4].documentation = "Search for locations within the specified local health area.  See [this site](https://www2.gov.bc.ca    /gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[4].type = #string
* parameter[4].searchType = #string
* parameter[5].name = #communityHealthServiceArea
* parameter[5].use = #in
* parameter[5].min = 0
* parameter[5].max = "1"
* parameter[5].documentation = "Search for locations within the specified local community health service area.  See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[5].type = #string
* parameter[5].searchType = #string


