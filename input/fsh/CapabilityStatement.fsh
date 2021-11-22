Instance: BCPLRClientCapabilityStatement
InstanceOf: CapabilityStatement

* id = "bc-plr-client-capability-statement"
* version = "1.0"
* name = "BCPLRClientCapabilityStatement"
* title = "BC PLR Client Capability Statement"
* status = #draft
* date = "2021-03-31"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the four use cases that are supported by the BC FHIR implementation of PLR.

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain messages at one time
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances
"
* kind = #capability
* software.name = "BC PLR FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json

* rest[0].mode = #client
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[0].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[0].resource[0].supportedProfile[3] = Canonical(BCBatchBundle)
* rest[0].resource[0].interaction[0].code = #create

Instance: BCPLRServerCapabilityStatement
InstanceOf: CapabilityStatement

* id = "bc-plr-server-capability-statement"
* version = "1.0"
* name = "BCPLRServerCapabilityStatement"
* title = "BC PLR Server Capability Statement"
* status = #draft
* date = "2021-03-31"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the four use cases that are supported by the BC FHIR implementation of PLR.

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain messages at one time
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances
"
* kind = #capability
* software.name = "BC PLR FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json

* rest[0].mode = #server
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[0].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[0].resource[0].interaction[0].code = #create
* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].operation[0].name = "entityQuery"
* rest[0].resource[1].operation[0].definition = Canonical(EntityPractitionerQuery)
* rest[0].resource[1].operation[1].name = "extendedQuery"
* rest[0].resource[1].operation[1].definition = Canonical(ExtendedPractitionerQuery)
* rest[0].resource[2].type = #Organization
* rest[0].resource[2].operation[0].name = "entityQuery"
* rest[0].resource[2].operation[0].definition = Canonical(EntityOrganizationQuery)
* rest[0].resource[1].operation[1].name = "extendedQuery"
* rest[0].resource[1].operation[1].definition = Canonical(ExtendedOrganizationQuery)
* rest[0].resource[3].type = #Location
* rest[0].resource[3].operation[0].name = "entityQuery"
* rest[0].resource[3].operation[0].definition = Canonical(EntityLocationQuery)
* rest[0].resource[1].operation[1].name = "extendedQuery"
* rest[0].resource[1].operation[1].definition = Canonical(ExtendedLocationQuery)
