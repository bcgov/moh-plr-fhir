Instance: BCPLRClientCapabilityStatement
InstanceOf: CapabilityStatement

* id = "bc-plr-client-capability-statement"
* version = "1.0"
* name = "BCPLRClientCapabilityStatement"
* title = "BC PLR Client Capability Statement"
* status = #draft
* date = "2022-11-15"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the use case that is supported by the BC FHIR implementation of PLR.

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* implementationGuide = "http://hlth.gov.bc.ca/fhir/provider/ImplementationGuide/fhir.ca-bc.provider"

* rest[0].mode = #client
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[0].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[0].resource[0].operation[0].name = "distribution"
* rest[0].resource[0].operation[0].definition = Canonical(Distribution)
* rest[0].resource[0].interaction[0].code = #create
* rest[0].resource[0].interaction[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[0].interaction[0].documentation = "Client applications shall support the three different types of Distributions."

Instance: BCPLRServerCapabilityStatement
InstanceOf: CapabilityStatement

* id = "bc-plr-server-capability-statement"
* version = "1.0"
* name = "BCPLRServerCapabilityStatement"
* title = "BC PLR Server Capability Statement"
* status = #draft
* date = "2022-11-15"
* publisher = "BC Ministry of Health"
* description = "This capability statement is listing the RESTful resources that are exposed as well as the three use cases that are supported by the BC FHIR implementation of PLR (see json or XML for more details):
* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain transactions at one time (not implemented yet)
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances (entityQuery and extendedQuery)

All POST and PUT Requests are sent using a Paramaters resource and the Response is always a Bundle resource containing an OperationOutcome and the expected profile(s) (BCPractitioner, BCPractitionerBundle ect ...)
"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
//* implementationGuide = "http://hlth.gov.bc.ca/fhir/provider/ImplementationGuide/fhir.ca-bc.provider"

* rest[0].mode = #server
* rest[0].documentation = "RESTful Atomic services"
* rest[0].operation[0].name = "maintain"
* rest[0].operation[0].documentation = "A BC resource Bundle is sent to create/update one resource"
* rest[0].operation[0].definition = Canonical(Maintain)

* rest[0].resource[0].type = #Practitioner
* rest[0].resource[0].profile = Canonical(BCPractitioner)
* rest[0].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[0].documentation = "RESTful GET service"
* rest[0].resource[0].operation[0].name = "entityQuery"
* rest[0].resource[0].operation[0].definition = Canonical(EntityPractitionerQuery)
* rest[0].resource[0].operation[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[0].operation[1].name = "extendedQuery"
* rest[0].resource[0].operation[1].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[0].operation[1].definition = Canonical(ExtendedPractitionerQuery)

* rest[0].resource[1].type = #PractitionerRole
* rest[0].resource[1].profile = Canonical(BCPractitionerRole)
* rest[0].resource[1].supportedProfile[0] = Canonical(BCRoleRelationships)
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[0].documentation = "RESTful GET service"
* rest[0].resource[1].interaction[1].code = #search-type
* rest[0].resource[1].interaction[1].documentation = "RESTful Search"
* rest[0].resource[1].searchParam[0].name = "organization"
* rest[0].resource[1].searchParam[0].documentation = "Organization IPC unique identifier"
* rest[0].resource[1].searchParam[0].type = #string
* rest[0].resource[1].searchParam[1].name = "practitioner"
* rest[0].resource[1].searchParam[1].documentation = "Practitioner IPC unique identifier"
* rest[0].resource[1].searchParam[1].type = #string
* rest[0].resource[1].searchParam[2].name = "location"
* rest[0].resource[1].searchParam[2].documentation = "Location IFC unique identifier"
* rest[0].resource[1].searchParam[2].type = #string

* rest[0].resource[2].type = #Organization
* rest[0].resource[2].profile = Canonical(BCOrganization)
* rest[0].resource[2].supportedProfile[0] = Canonical(BCOrganizationBundle)
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[0].documentation = "RESTful GET service"
* rest[0].resource[2].operation[0].name = "entityQuery"
* rest[0].resource[2].operation[0].definition = Canonical(EntityOrganizationQuery)
* rest[0].resource[2].operation[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[2].operation[1].name = "extendedQuery"
* rest[0].resource[2].operation[1].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[2].operation[1].definition = Canonical(ExtendedOrganizationQuery)

* rest[0].resource[3].type = #OrganizationAffiliation 
* rest[0].resource[3].profile = Canonical(BCOrganizationAffiliation)
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[0].documentation = "RESTful GET service"
* rest[0].resource[3].interaction[1].code = #search-type
* rest[0].resource[3].interaction[1].documentation = "RESTful Search"
* rest[0].resource[3].searchParam[0].name = "organization"
* rest[0].resource[3].searchParam[0].documentation = "Organization IPC unique identifier"
* rest[0].resource[3].searchParam[0].type = #string
* rest[0].resource[3].searchParam[1].name = "location"
* rest[0].resource[3].searchParam[1].documentation = "Location IFC unique identifier"
* rest[0].resource[3].searchParam[1].type = #string

* rest[0].resource[4].type = #Location
* rest[0].resource[4].profile = Canonical(BCLocation)
* rest[0].resource[4].supportedProfile[0] = Canonical(BCLocationBundle)
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[0].documentation = "RESTful GET service"
* rest[0].resource[4].operation[0].name = "entityQuery"
* rest[0].resource[4].operation[0].definition = Canonical(EntityLocationQuery)
* rest[0].resource[4].operation[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[4].operation[1].name = "extendedQuery"
* rest[0].resource[4].operation[1].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[4].operation[1].definition = Canonical(ExtendedLocationQuery)
