Instance: BCPLRCapabilityStatement
InstanceOf: CapabilityStatement
* id = "bc-plr-capability-statement"
* version = "1.0"
* name = "BCPLRCapabilityStatement"
* title = "BC PLR Capability Statement"
* status = #draft
* date = "2021-03-31"
* publisher = "BC Ministry of Health"
* description = "This capability statement describes the four use cases that are supported by the BC FHIR implementation of PLR.

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
* Maintain - used when an outside source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain messages at one time
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances

#### Distributions

A Distribution is used by PLR to communicate a change in a single Practitioner, Organization, or Location.  It will be accomplished by sending a FHIR Bundle of type 'transaction' via a RESTful PUT message.  The transaction Bundle includes one of the following sets:

1.	PractitionerRole(s) and Practitioner;
2.	OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.	Location, OrganizationAffiliation(s), PractitionerRole(s).  

One PUT message per distribution and each distribution will have a single Provider or Facility.  Each distribution message has a logical ID which is a database unique key.  This logical ID is not intended to be used in any other message, i.e., one can not request the Bundle with GET /Bundle/123445.

The response to a distribution must be HTTP 200 or 201 OK.  Anything else and the reliable messaging function will retry to send the message until a 200 is received back.

#### Maintain
Maintain Provider and Facility will be exactly like Distributions above, just an incoming message, rather than an outbound message.

The logical ID of the transaction Bundle is assigned by the source of the message and is not intended to be used again.  The source today requires a unique identifier for each message, and the logical ID can be that unique identifier.

The response will also be a Bundle with OperationOutcome and the modified or new resource(s) within the Bundle.  A maintain Bundle must only update or create a single Provider or Facility.  Thus, if the message is requesting a relationship to a Provider be created that target Provider must already exist in PLR, otherwise the whole transaction Bundle is rolled back.

#### Batch
Batch also uses Bundles, but a batch Bundle.  A batch Bundle allows for many independent transactions to be sent in a single message.  The batch Bundle must contain at least one or more of:

1.	a transaction Bundle (with PractitionerRole(s) and Practitioner) to add/update a Ind. Provider
2.	a transaction Bundle (with OrganizationAffiliation(s), PractitionerRole(s) and Organizations) to add/update a Org. Provider
3.	a transaction Bundle (with OrganizationAffiliations(s) and PractitionerRole(s)) to add/update a Facility

Batch is not a web service, but a file uploaded to an ftp site.  The logical ID of a Batch should be assigned by the source; PLR batch users should be assigning a unique identifier to the batch file (requirement today) so that will have to be the logical ID.  The logical ID is transient and not meant to be used again in any way.  Within the batch Bundle each transaction will have a conformant logical ID if the transaction is to update an existing Provider or Facility.  If the transaction is to create, the logical ID is assigned by PLR and returned in the response Bundle.

The response Bundle is similarly structured to the request, populating and echoing back the results of each transaction.  The only difference is that OperationOutcome should also be included for each transaction for acknowledgement and error messages - and a Bundle with a single OperationOutcome to cover the situation where the batch wasn't processed due to validation or non-business errors.

#### Query
Rather than using the FHIR RESTful search mechanism, PLR FHIR has defined a set of FHIR Operations to search for Providers and Facilities.  Operations are designed for searches where the server needs to play an active role in preparing the responses.  In PLR's case, the server would need to include resources that make up the full Provider or additionally return the full Provider and related Providers or Facilities.  Queries using PractitionerRole and OrganizationAffiliation are not permitted and unnecessary.

The two query operations are:

* $full - used to return the full [provider](OperationDefinition-bc-full-provider-query.html) or [organization or facility](OperationDefinition-bc-full-organization-facility-query.html) without following relationships
* $dereference - used to return the full [provider](OperationDefinition-bc-dereference-provider-query.html) or [organization or facility](OperationDefinition-bc-dereference-organization-facility-query.html) along with all directly referenced providers or facilities

The syntax for the $full operation is:

* GET /resource/id/$full to retrieve a specific provider or facility where the id is known
* GET /resource/$full?param1&param2&... to search for a provider or facility

The parameters for the $full operation will be the standard search parameters.

The syntax for the $dereference operation is:

* GET /resource/id/$dereference to retrieve the full information about a specific provider or facility where the id is known
* GET /resource/$dereference?param1&param2&... to search and retrieve the full information about a provider or facility

The parameters for the $dereference operation will be the standard search parameters, along with the 'join' parameters, e.g., location_city, organization_name, etc."

* kind = #capability
* software.name = "BC PLR FHIR Implementation"
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json

* rest[0].mode = #server
* rest[0].resource[0].type = #Bundle
* rest[0].resource[0].supportedProfile[0] = Canonical(BCProviderBundle)
* rest[0].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[0].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[0].resource[0].interaction[0].code = #create
* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].operation[0].name = "full"
* rest[0].resource[1].operation[0].definition = Canonical(FullProviderQuery)
* rest[0].resource[1].operation[1].name = "dereference"
* rest[0].resource[1].operation[1].definition = Canonical(DereferenceProviderQuery)
* rest[0].resource[2].type = #Organization
* rest[0].resource[2].operation[0].name = "full"
* rest[0].resource[2].operation[0].definition = Canonical(FullOrganizationFacilityQuery)
* rest[0].resource[1].operation[1].name = "dereference"
* rest[0].resource[1].operation[1].definition = Canonical(DereferenceOrganizationFacilityQuery)
* rest[0].resource[3].type = #Location
* rest[0].resource[3].operation[0].name = "full"
* rest[0].resource[3].operation[0].definition = Canonical(FullOrganizationFacilityQuery)
* rest[0].resource[1].operation[1].name = "dereference"
* rest[0].resource[1].operation[1].definition = Canonical(DereferenceOrganizationFacilityQuery)
* rest[1].mode = #client
* rest[1].resource[0].type = #Bundle
* rest[1].resource[0].supportedProfile[0] = Canonical(BCProviderBundle)
* rest[1].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[1].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[1].resource[0].interaction[0].code = #create