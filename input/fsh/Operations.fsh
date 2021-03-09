Instance: FullResourceQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a provider, organization, or facility and will return the information for that provider, organization, or facility, without following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-full-resource-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-full-resource-query"
* name = "FullResourceQuery"
* title = "Full Query for a provider"
* status = #draft
* kind = #query
* code = #full
* resource[0] = #Practitioner
* resource[1] = #Organization
* resource[2] = #Location
* system = false
* type = true
* instance = true

Instance: DereferenceResourceQuery
InstanceOf: OperationDefinition
Description: "This operation is used to query for a provider, organization, or facility and will return the information for that provider, organization, or facility, along with any instances that can be found by following associations to other providers, organizations, or facilities."
Usage: #definition
* id = "bc-dereference-resource-query"
* url = "http://hl7.org/fhir/ca-bc/provider/OperationDefinition/bc-dereference-resource-query"
* name = "DereferenceResourceQuery"
* title = "Dereferenced Query for a provider"
* status = #draft
* kind = #query
* code = #dereference
* resource[0] = #Practitioner
* resource[1] = #Organization
* resource[2] = #Location
* system = false
* type = true
* instance = true
