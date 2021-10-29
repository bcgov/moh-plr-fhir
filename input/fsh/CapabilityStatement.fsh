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
* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain messages at one time
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances

#### Distributions

A Distribution is used by PLR to communicate a change in a single Practitioner, Organization, or Location to an external connected system that subscribes to the distribution service.  It will be accomplished by sending a FHIR Bundle of type 'transaction' via a RESTful PUT message.  The transaction Bundle includes one of the following sets:

1.	PractitionerRole(s) and Practitioner;
2.	OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.	Location, OrganizationAffiliation(s), PractitionerRole(s).  

There will be one PUT message per distribution and each distribution will have a single Practitioner, Organization, or Location.  Each distribution message has a logical ID which is a database unique key.  This logical ID is not intended to be used in any other message, i.e., one can not request the Bundle with GET /Bundle/123445.

With the restriction on the content of the different Distribution Bundles, it may take multiple Bundles to convey all of the relationships between Practitioners, Organizations, and Locations.  To send a PractitionerRole, the Organization and/or Location must already exist.  Similarly, for OrganizationAffiliations, the Organizations and/or Locations must already exist.  That could possibly mean that one would see a Distribution Bundle with just an Organization and then another Bundle with a Practitioner and a PractitionerRole linking the Practitioner and the Organization.

The response to a distribution SHALL be HTTP 200 or 201 OK.  Anything else and the reliable messaging function will retry to send the message until a 200 is received back.

#### Maintain
Maintain Provider and Facility will be exactly like Distributions above, just an incoming message, rather than an outbound message.  The rules for Distributions apply to Maintain Bundles.

The logical ID of the transaction Bundle is assigned by the source of the message and is not intended to be used again.  The source today is required to use a unique identifier for each message and the logical ID can be that unique identifier.

The response SHALL be a Bundle with OperationOutcome and the modified or new resource(s) within the Bundle.  A maintain Bundle SHALL only update or create a single Provider or Facility.  Thus, if the message is requesting a relationship to a Provider be created, the target Provider SHALL already exist in PLR, otherwise the whole transaction Bundle is rolled back.

#### Batch
Batch also uses Bundles, but a batch Bundle.  A batch Bundle allows for many independent transactions to be sent in a single message.  The batch Bundle must contain at least one or more of:

1.	a transaction Bundle (with PractitionerRole(s) and Practitioner) to add/update an Individual Provider
2.	a transaction Bundle (with OrganizationAffiliation(s), PractitionerRole(s) and Organizations) to add/update an Organizational Provider
3.	a transaction Bundle (with OrganizationAffiliations(s) and PractitionerRole(s)) to add/update a Facility

The logical ID of a Batch SHOULD be assigned by the source; the unique identifier that PLR batch users are to the batch file SHALL be the logical ID.  The logical ID is transient and not meant to be used again in any way.  Within the batch Bundle each transaction SHALL have a conformant logical ID if the transaction is to update an existing Provider or Facility.  If the transaction is to create, the logical ID is assigned by PLR and returned in the response Bundle.

The response Bundle is similarly structured to the request, populating and echoing back the results of each transaction.  The only difference is that OperationOutcome SHALL also be included for each transaction for acknowledgement and error messages - and a Bundle with a single OperationOutcome to cover the situation where the batch wasn't processed due to validation or non-business errors.

#### Query
PLR FHIR has defined a set of FHIR Operations to search for Providers and Facilities.  These are the only FHIR RESTful queries that are supported by PLR.  Operations are designed for searches where the server needs to play an active role in preparing the responses.  In PLR's case, the server would need to include resources that make up the full Provider or additionally return the full Provider and related Providers or Facilities.  Queries using PractitionerRole and OrganizationAffiliation are not permitted and unnecessary.

The two query operations are:

* $full - used to return the full [provider](OperationDefinition-bc-full-practitioner-query.html) or [organization](OperationDefinition-bc-full-organization--query.html) or [location](OperationDefinition-bc-full-location-query.html) without following relationships
* $dereference - used to return the full [provider](OperationDefinition-bc-dereference-practitioner-query.html) or [organization or facility](OperationDefinition-bc-dereference-organization-facility-query.html) along with all directly referenced providers or facilities

The syntax for the $full operation is:

* GET /resource/id/$full to retrieve a specific provider or facility where the id is known
* GET /resource/$full?param1&param2&... to search for a provider or facility with search parameters instead of an id

Although PLR supports many different types of identifiers, the resource id is the identifier assigned by PLR when the resource is created, internally called the IPC for Providers and IFC for Facilities.  This id is always returned in the response and should be persisted by the requestor.  To search for other identifiers stored in PLR and attached to Providers or Facilities, the search parameter 'identifier' should be used.

The parameters for the $full operation will be the standard search parameters.

The syntax for the $dereference operation is:

* GET /resource/id/$dereference to retrieve the full information about a specific provider or facility where the id is known
* GET /resource/$dereference?param1&param2&... to search and retrieve the full information about a provider or facility

The parameters for the $dereference operation will be the standard search parameters, along with the 'join' parameters, e.g., location_city, organization_name, etc.
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
* rest[0].resource[1].operation[0].name = "full"
* rest[0].resource[1].operation[0].definition = Canonical(FullPractitionerQuery)
* rest[0].resource[1].operation[1].name = "dereference"
* rest[0].resource[1].operation[1].definition = Canonical(DereferencePractitionerQuery)
* rest[0].resource[2].type = #Organization
* rest[0].resource[2].operation[0].name = "full"
* rest[0].resource[2].operation[0].definition = Canonical(FullOrganizationQuery)
* rest[0].resource[1].operation[1].name = "dereference"
* rest[0].resource[1].operation[1].definition = Canonical(DereferenceOrganizationQuery)
* rest[0].resource[3].type = #Location
* rest[0].resource[3].operation[0].name = "full"
* rest[0].resource[3].operation[0].definition = Canonical(FullLocationQuery)
* rest[0].resource[1].operation[1].name = "dereference"
* rest[0].resource[1].operation[1].definition = Canonical(DereferenceLocationQuery)
* rest[1].mode = #client
* rest[1].resource[0].type = #Bundle
* rest[1].resource[0].supportedProfile[0] = Canonical(BCPractitionerBundle)
* rest[1].resource[0].supportedProfile[1] = Canonical(BCOrganizationBundle)
* rest[1].resource[0].supportedProfile[2] = Canonical(BCLocationBundle)
* rest[1].resource[0].supportedProfile[3] = Canonical(BCBatchBundle)
* rest[1].resource[0].interaction[0].code = #create
