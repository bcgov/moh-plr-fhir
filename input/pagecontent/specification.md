### How do PLR FHIR Messages fit into BC Core Specifications?

### FHIR Resources

In FHIR, the resources used are named Practitioner, Organization, and Location.  BC has created profiles of each of these resources for use in the PLR system.

Each Individual Provider is composed of a [Practitioner instance](StructureDefinition-bc-practitioner.html) and at least one [Practitioner Role instance](StructureDefinition-bc-practitioner-role.html) which holds the Provider's role, such as Nurse or Dentist.

Each Organizational Provider is composed of an [Organization instance](StructureDefinition-bc-organization.html) with zero or more [Practitioner Role instances](StructureDefinition-bc-practitioner-role.html) or [Organization Affiliation instances](StructureDefinition-bc-organization-affiliation.html) that store relationship references.

Each Facility is composed of a [Location instance](StructureDefinition-bc-location.html) with zero or more [Practitioner Role profile instances](StructureDefinition-bc-practitioner-role.html) or [Organization Affiliation instances](StructureDefinition-bc-organization-affiliation.html) for relationship references.

A person may be in PLR twice, once for each role, such as a Nurse and Dentist.  This means in FHIR there will be two Practitioner instances, one for Nurse and one for Dentist, each Practitioner instance being identical*, distinguishable only by reviewing the associated Practitioner Role profile instance.  It is best practice to treat the Dentist and Nurse as unique Practitioners in the context of FHIR messages to BC PLR.

*Parts of the Practitioner instance may not be identical if the Provider gave the College of Nursing a slightly different name than the College of Dentistry (like short forms, or last name changes).

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="bc_fhir_prac_org_fac.png" alt="BC FHIR Resources"/>
  <figcaption>Figure 2.1 - BC FHIR Resources</figcaption>
</figure>
{::options parse_block_html="true" /}


### Relationships between Resources
#### Provider to Provider Relationships

##### Individual Provider to Individual Provider
To show the relationship between two individual providers, the [BC Practitioner Relationship extension](StructureDefinition-bc-practitioner-relationship-extension.html) was created.  This allows for a relationship type and a linkage between two BC Practitioners to be stated.  NOTE: It is expected that the relationship would be found on both Practitioner instances.

##### Individual Provider to Organizational Provider
To show the relationship between an individual Provider and an organizational Provider, the [BC PractitionerRole profile](StructureDefinition-bc-practitioner-role.html) is used.  This resource has a practitioner data element and an organization data element along with a code that is used to say what role the individual provider plays at the organization.

##### Organizational Provider to Organizational Provider
To show the relationship between two organizational providers, the [BC OrganizationAffiliation profile](StructureDefinition-bc-organization-affiliation.html) is used.  This resource has an organization data element and a participating organization data element along with a code that is used to indicate the nature of the affiliation between the two organizations.

#### Provider to Facility Relationships

##### Individual Provider to Facility
To show the relationship between an individual provider and a facility, the [BC PractitionerRole profile](StructureDefinition-bc-practitioner-role.html) is used.  Instead of the organization data element, the location data element is used to indicate that a provider is related to a facility.

##### Organization Provider to Facility
To show the relationship between an organizational provider and a facility, the [BC OrganizationAffiliation profile](StructureDefinition-bc-organization-affiliation.html) is used.  Instead of the particpiating organization data element, the location data element is used to indicate that an organization is related to a facility.

### Message Use Cases
There are a number of use cases that support the existing PLR functionality:

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

* $full - used to return the full provider or facility without following relationships
* $dereference - used to return the full provider or facility along with all directly referenced providers or facilities

The syntax for the $full operation is:

* GET /resource/id/$full to retrieve a specific provider or facility where the id is known
* GET /resource/$full?param1&param2&... to search for a provider or facility

The parameters for the $full operation will be the standard search parameters.

The syntax for the $dereference operation is:

* GET /resource/id/$dereference to retrieve the full information about a specific provider or facility where the id is known
* GET /resource/$dereference?param1&param2&... to search and retrieve the full information about a provider or facility

The parameters for the $dereference operation will be the standard search parameters, along with the 'join' parameters, e.g., location_city, organization_name, etc.

##### General Query Rules
1. Only the existing search criteria will be allowed as parameters 
    * Role
    * Surname
    * Given name
    * City
    * Language
    * Expertise
    * Status code
    * Status reason
    * Gender
    * Org long name
    * Org description
2. Wild cards requirements are valid as per the Web interface and requirements
3. The logical ID as per FHIR conformance is the IPC and IFC (for Facilities)
4. OrganizationAffilication and PractitionerRole do not have logical IDs or business identifiers.  Searching by these resources is not permitted.

### Capability Statement

### Special Notes
#### Providers and Roles
#### Provider Role and Expertise
#### Organizations and Roles
### Do's and Don'ts
