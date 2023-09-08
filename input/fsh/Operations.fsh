Instance: EntityPractitionerQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a practitioner and will return the information for that practitioner without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-entity-practitioner-query"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-practitioner-query"
* name = "PractitionerEntityQuery"
* title = "Query for a practitioner without returning associations"
* status = #draft
* kind = #query
* code = #entityQuery
* resource[0] = #Practitioner
* system = false
* type = true
* instance = true
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]"
* parameter[=].type = #string
* parameter[=].searchType = #string
/* parameter[+].name = #identifier-type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String code for identifier type (e.g. CPSID),  mandatory if identifier is specified. Mapping to Practitioner.identifier.type.coding.code"
* parameter[=].type = #string
* parameter[=].searchType = #token */
* parameter[+].name = #surname
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with the specified surname. May use trailing wildcards, e.g. Smith*"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #given-name
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with the specified given name. May use trailing wildcards, e.g. Ann*"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #status
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with a license that has the specified status."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #address-city
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with an address that includes the given city."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #gender
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with the specified gender."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #role
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners that have an associated PractitionerRole code with the specified value (e.g. MD or RN)"
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #language
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners who can communicate with the specified language code. May be a comma separated list of language codes, e.g. F01,E09."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #expertise
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with a qualification that matches the specified expertise. May be a comma separated list of expertise codes, e.g. AM53,K34."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #status-reason
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with a license that has the specified status reason."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #withHistory
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned."
* parameter[=].type = #boolean
* parameter[+].name = #bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Response Bundle with the OperationOutcome and the list of BCPractitionerBundle found by the search."
* parameter[=].type = #Bundle


Instance: EntityLocationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an location and will return the information for that location without following associations to other practitioner, organizations, or locations."
Usage: #definition
* id = "bc-entity-location-query"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-location-query"
* name = "LocationEntityQuery"
* title = "Query for a location without returning associations"
* status = #draft
* kind = #query
* code = #entityQuery
* resource[0] = #Location
* system = false
* type = true
* instance = true
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]"
* parameter[=].type = #string
* parameter[=].searchType = #string
/* parameter[+].name = #identifier-type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String code for identifier type (e.g. LOCID), mandatory if identifier is specified. Mapping to Location.identifier.type.coding.code"
* parameter[=].type = #string
* parameter[=].searchType = #token */
* parameter[+].name = #name
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with the specified name."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #address-city
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with the specified city."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #address-line1
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with a civic address. Supports trailing wild card."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #otheraddress-line1
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with an address. Supports trailing wild card. Not implemented yet."
* parameter[=].type = #string
* parameter[=].searchType = #string
/* * parameter[+].name = #facility-type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for location with the specified facility type code, mapping to Location.physicalType"
* parameter[=].type = #string
* parameter[=].searchType = #token*/
* parameter[+].name = #healthAuthority
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified health authority. Only one of healthAuthority, healthServiceDeliveryArea, localHealthArea, communityHealthServiceArea allowed. The full name is required. E.g. Langford/Highlands. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #healthServiceDeliveryArea
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified health service delivery area. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #localHealthArea
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified local health area. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #communityHealthServiceArea
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified local community health service area. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #primaryCareNetwork
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified Primary Care Network. Not implemented yet."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #withHistory
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned."
* parameter[=].type = #boolean
* parameter[+].name = #bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Response Bundle with the OperationOutcome and the list of BCLocationBundle found by the search."
* parameter[=].type = #Bundle


Instance: EntityOrganizationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an organization and will return the information for that organization without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-entity-organization-query"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-organization-query"
* name = "OrganizationEntityQuery"
* title = "Query for an organization without returning associations"
* status = #draft
* kind = #query
* code = #entityQuery
* resource[0] = #Organization
* system = false
* type = true
* instance = true
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]"
* parameter[=].type = #string
* parameter[=].searchType = #string
/* parameter[+].name = #identifier-type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String code for identifier type (e.g. ORGID), mandatory if identifier is specified. Mapping to Organization.identifier.type.coding.code"
* parameter[=].type = #string
* parameter[=].searchType = #token */
* parameter[+].name = #name
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified name, mandatory if no identifier specified. May use trailing wildcards, e.g. Clinic*"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #description
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified description, mapping to BCOrganization.alias. May use trailing wildcards, e.g. Clinic*"
* parameter[=].type = #string
* parameter[=].searchType = #string 
* parameter[+].name = #type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified role type code, mandatory if no identifier specified, mapping to Organization.type"
* parameter[=].type = #string
* parameter[=].searchType = #token 
* parameter[+].name = #address-city
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified city."
* parameter[=].type = #string
* parameter[=].searchType = #string 
* parameter[+].name = #withHistory
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned."
* parameter[=].type = #boolean
* parameter[+].name = #bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Response Bundle with the OperationOutcome and the list of BCOrganizationBundle found by the search."
* parameter[=].type = #Bundle


Instance: ExtendedPractitionerQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a provider and will return the information for that provider along with any instances that can be found by following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-extended-practitioner-query"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-practitioner-query"
* name = "PractitionerExtendedQuery"
* title = "Query for a Practitioner that returns associated resources"
* status = #draft
* kind = #query
* code = #extendedQuery
* resource[0] = #Practitioner
* system = false
* type = true
* instance = true
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #surname
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with the specified surname. May use trailing wildcards, e.g. Smith*"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #given-name
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with the specified given name. May use trailing wildcards, e.g. Ann*"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #status
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with a license that has the specified status."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #address-city
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with an address that includes the given city."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #gender
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with the specified gender."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #role
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners that have an associated PractitionerRole code with the specified value (e.g. MD or RN)"
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #language
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners who can communicate with the specified language code. May be a comma separated list of language codes, e.g. F01,E09."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #expertise
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with a qualification that matches the specified expertise. May be a comma separated list of expertise codes, e.g. AM53,K34."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #status-reason
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for practitioners with a license that has the specified status reason."
* parameter[=].type = #string
* parameter[=].searchType = #token
* parameter[+].name = #withHistory
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned."
* parameter[=].type = #boolean
* parameter[+].name = #bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Response Bundle with the OperationOutcome and the list of BCPractitionerBundle found by the search."
* parameter[=].type = #Bundle

Instance: ExtendedOrganizationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an organization and will return the information for that organization along with any instances that can be found by following associations to other practitioners, organizations, or locations."
Usage: #definition
* id = "bc-extended-organization-query"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-organization-query"
* name = "OrganizationExtendedQuery"
* title = "Query for an organization that returns associated resources"
* status = #draft
* kind = #query
* code = #extendedQuery
* resource[0] = #Organization
* system = false
* type = true
* instance = true
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #name
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified name, mandatory if no identifier specified. May use trailing wildcards, e.g. Clinic*"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #description
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified description, mapping to BCOrganization.alias. May use trailing wildcards, e.g. Clinic*"
* parameter[=].type = #string
* parameter[=].searchType = #string 
* parameter[+].name = #type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified role type code, mandatory if no identifier specified, mapping to Organization.type"
* parameter[=].type = #string
* parameter[=].searchType = #token 
* parameter[+].name = #address-city
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for organizations with the specified city."
* parameter[=].type = #string
* parameter[=].searchType = #string 
* parameter[+].name = #withHistory
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned."
* parameter[=].type = #boolean
* parameter[+].name = #bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Response Bundle with the OperationOutcome and the list of BCOrganizationBundle found by the search."
* parameter[=].type = #Bundle


Instance: ExtendedLocationQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for an location and will return the information for that location along with any instances that can be found by following associations to other providers, organizations, or location."
Usage: #definition
* id = "bc-extended-location-query"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-location-query"
* name = "LocationExtendedQuery"
* title = "Query for a location that returns associated resources"
* status = #draft
* kind = #query
* code = #extendedQuery
* resource[0] = #Location
* system = false
* type = true
* instance = true
* parameter[+].name = #identifier
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]"
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #name
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with the specified name."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #address-city
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with the specified city."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #address-line1
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with a civic address. Supports trailing wild card."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #otheraddress-line1
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations with an address. Supports trailing wild card. Not implemented yet."
* parameter[=].type = #string
* parameter[=].searchType = #string
/* * parameter[+].name = #facility-type
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for location with the specified facility type code, mapping to Location.physicalType"
* parameter[=].type = #string
* parameter[=].searchType = #token*/
* parameter[+].name = #healthAuthority
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified health authority. Only one of healthAuthority, healthServiceDeliveryArea, localHealthArea, communityHealthServiceArea allowed. The full name is required. E.g. Langford/Highlands. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #healthServiceDeliveryArea
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified health service delivery area. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #localHealthArea
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified local health area. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #communityHealthServiceArea
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified local community health service area. See [this site](https://www2.gov.bc.ca/gov/content/data/geographic-data-services/land-use/administrative-boundaries/health-boundaries) for a list of accepteable strings."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #primaryCareNetwork
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Search for locations within the specified Primary Care Network. Not implemented yet."
* parameter[=].type = #string
* parameter[=].searchType = #string
* parameter[+].name = #withHistory
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned."
* parameter[=].type = #boolean
* parameter[+].name = #bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Response Bundle with the OperationOutcome and the list of BCLocationBundle found by the search."
* parameter[=].type = #Bundle


Instance: Maintain
InstanceOf: OperationDefinition
Description: "This operation is used to create and update the resources that represent a Provider or Facility."
Usage: #definition
* id = "bc-maintain"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-maintain"
* name = "Maintain"
* title = "Maintain PLR entities."
* status = #draft
* kind = #operation
* code = #maintain
* resource[0] = #Bundle
* system = true
* type = false
* instance = false
* parameter[+].name = #messageId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A unique message ID."
* parameter[=].type = #string
* parameter[+].name = #messageTime
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "When the message was sent."
* parameter[=].type = #dateTime
* parameter[+].name = #maintain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A [BC Practitioner Bundle](StructureDefinition-bc-practitioner-bundle.html), or [BC Organization Bundle](StructureDefinition-bc-organization-bundle.html) or a [BC Location Bundle](StructureDefinition-bc-location-bundle.html)."
* parameter[=].type = #Bundle

* parameter[+].name = #messageId
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A unique message ID."
* parameter[=].type = #string

* parameter[+].name = #messageTime
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "When the message was sent."
* parameter[=].type = #dateTime

* parameter[+].name = #requestMessageId
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The request message ID."
* parameter[=].type = #string

* parameter[+].name = #maintain
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A [BC Practitioner Bundle](StructureDefinition-bc-practitioner-bundle.html), or [BC Organization Bundle](StructureDefinition-bc-organization-bundle.html) or a [BC Location Bundle](StructureDefinition-bc-location-bundle.html)."
* parameter[=].type = #Bundle

* parameter[+].name = #outcome
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The operation outcome - success, warning and error messages."
* parameter[=].type = #OperationOutcome

Instance: Distribution
InstanceOf: OperationDefinition
Description: "This operation is used to distribute the resources that represent a Provider or Facility."
Usage: #definition
* id = "bc-distribution"
* url = "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-distribution"
* name = "Distribution"
* title = "PLR entities sent out in a distribution."
* status = #draft
* kind = #operation
* code = #distribution
* resource[0] = #Bundle
* system = true
* type = false
* instance = false
* parameter[+].name = #messageId
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A unique message ID."
* parameter[=].type = #string
* parameter[+].name = #messageTime
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "When the message was sent."
* parameter[=].type = #dateTime
* parameter[+].name = #distribution
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A [BC Practitioner Bundle](StructureDefinition-bc-practitioner-bundle.html), or [BC Organization Bundle](StructureDefinition-bc-organization-bundle.html) or a [BC Location Bundle](StructureDefinition-bc-location-bundle.html) with the latest Provider/Facility data."
* parameter[=].type = #Bundle
