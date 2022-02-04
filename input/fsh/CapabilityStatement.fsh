Instance: BCPLRClientCapabilityStatement
InstanceOf: CapabilityStatement

* id = "bc-plr-client-capability-statement"
* version = "1.0"
* name = "BCPLRClientCapabilityStatement"
* title = "BC PLR Client Capability Statement"
* status = #draft
* date = "2021-03-31"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the use case that is supported by the BC FHIR implementation of PLR.

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* implementationGuide = "http://hl7.org/fhir/ca-bc/provider/ImplementationGuide/fhir.ca-bc.provider"

* rest[0].mode = #client
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[0].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[0].resource[0].interaction[0].code = #create
* rest[0].resource[0].interaction[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[0].interaction[0].documentation = "Client applications shall support the three different types of Distribution transactions."

Instance: BCPLRServerCapabilityStatement
InstanceOf: CapabilityStatement

* id = "bc-plr-server-capability-statement"
* version = "1.0"
* name = "BCPLRServerCapabilityStatement"
* title = "BC PLR Server Capability Statement"
* status = #draft
* date = "2021-03-31"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the three use cases that are supported by the BC FHIR implementation of PLR.

* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain transactions at one time
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances
"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* implementationGuide = "http://hl7.org/fhir/ca-bc/provider/ImplementationGuide/fhir.ca-bc.provider"

* rest[0].mode = #server
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[0].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCBatchBundle)
* rest[0].resource[0].interaction[0].code = #create
* rest[0].resource[0].interaction[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[0].interaction[0].documentation = "Servers SHALL support the BC Batch Bundle to send multiple Maintain transactions at one time.  They SHALL also support the three different types of Maintain transactions."
* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].operation[0].name = "entityQuery"
* rest[0].resource[1].operation[0].definition = Canonical(EntityPractitionerQuery)
* rest[0].resource[1].operation[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[1].operation[1].name = "extendedQuery"
* rest[0].resource[1].operation[1].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[1].operation[1].definition = Canonical(ExtendedPractitionerQuery)
* rest[0].resource[2].type = #Organization
* rest[0].resource[2].operation[0].name = "entityQuery"
* rest[0].resource[2].operation[0].definition = Canonical(EntityOrganizationQuery)
* rest[0].resource[2].operation[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[2].operation[1].name = "extendedQuery"
* rest[0].resource[2].operation[1].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[2].operation[1].definition = Canonical(ExtendedOrganizationQuery)
* rest[0].resource[3].type = #Location
* rest[0].resource[3].operation[0].name = "entityQuery"
* rest[0].resource[3].operation[0].definition = Canonical(EntityLocationQuery)
* rest[0].resource[3].operation[0].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[3].operation[1].name = "extendedQuery"
* rest[0].resource[3].operation[1].extension[http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation].valueCode = #SHALL
* rest[0].resource[3].operation[1].definition = Canonical(ExtendedLocationQuery)
