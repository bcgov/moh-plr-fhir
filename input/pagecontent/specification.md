{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.  For more information, please see the <a href="future.html">Future Plans</a> page in this guide.</p>
</blockquote>
{% endraw %}
### FHIR Resources

In FHIR, the resources used are named Practitioner, Organization, and Location.  BC has created profiles of each of these resources for use in the PLR system.

Each Individual Provider is composed of a [Practitioner instance](StructureDefinition-bc-practitioner.html) and at least one [PractitionerRole instance](StructureDefinition-bc-practitioner-role.html) which holds the Practitioner's role, such as Nurse or Dentist.  Other PractitionerRole instances will hold the relationship between an Practitioner and their Work Locations via the PractitionerRole.location reference and to Organizational Providers via the PractitionerRole.organization.

Each Organizational Provider is composed of an [Organization instance](StructureDefinition-bc-organization.html) with zero or more [OrganizationAffiliation instances](StructureDefinition-bc-organization-affiliation.html) that hold the relationship betwen two different Organizations as well as the relationship between an Organization and the locations where it provides services.

Each Facility is composed of a [Location instance](StructureDefinition-bc-location.html).  The relationship between a Location and a Practitioner is conveyed in a [PractitionerRole instance](StructureDefinition-bc-practitioner-role.html) while the relationship between a Location and an Organization is conveyed in an [OrganizationAffiliation instance](StructureDefinition-bc-organization-affiliation.html).

A practitioner providing services in multiple roles, for example, as a Nurse or a Dentist, will have a separate record in PLR for each role.  This means in FHIR there will be two Practitioner instances, one for Nurse and one for Dentist, each Practitioner instance being identical, distinguishable only by reviewing the associated Practitioner Role profile instance.  Note that strictly speaking, parts of the Practitioner instances that represent the same person may not be identical if the Provider gave the College of Nurses a slightly different name than the College of Dental Surgeons (like short forms, or last name changes).  It is best practice to treat the Dentist and Nurse as unique Practitioners in the context of FHIR messages and BC PLR.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="400px" src="bc_fhir_prac_org_fac.png" alt="BC FHIR Resources"/>
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
To show the relationship between an organizational provider and a facility, the [BC OrganizationAffiliation profile](StructureDefinition-bc-organization-affiliation.html) is used.  Instead of the participating organization data element, the location data element is used to indicate that an organization is related to a facility.

### Use Cases
There are a number of use cases that support the existing PLR functionality:

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
* Maintain - used when an external source is communicating a change to a Practitioner, Organization or Location
* Batch - allows for the sending of multiple Maintain interactions in a single request
* Queries - a set of FHIR Operations are defined that allow the querying of PLR FHIR instances

#### Distributions

A Distribution is used by PLR to communicate a change in a single Practitioner, Organization, or Location to an external connected system that subscribes to the distribution service.  To be clear, this is not the FHIR Subscription model, but a custom PLR subscription service that requires the user to sign up with the Registry administrator and follow the setup and configuration guide.  It will be accomplished by sending a FHIR Bundle of type 'transaction' via a RESTful PUT message.  The transaction Bundle includes one of the following sets:

1.	PractitionerRole(s) and Practitioner;
2.	OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.	Location, OrganizationAffiliation(s), PractitionerRole(s).

There will be one PUT request per distribution and each distribution will have a single Practitioner, Organization, or Location.  Each distribution request has a logical ID which is a database unique key.  This logical ID is not intended to be used in any other interaction, i.e., one can not request the Bundle with GET /Bundle/123445.

With the restriction on the content of the different Distribution Bundles, it may take multiple Bundles to convey all of the relationships between Practitioners, Organizations, and Locations.  To send a PractitionerRole, the Organization and/or Location must already exist.  Similarly, for OrganizationAffiliations, the Organizations and/or Locations must already exist.  That could possibly mean that one would see a Distribution Bundle with just an Organization and then another Bundle with a Practitioner and a PractitionerRole linking the Practitioner and the Organization.

The response to a distribution SHALL be HTTP 200 or 201 OK.  Anything else and the reliable messaging function will retry to send the request until a 200 is received back or times out.

#### Maintain
Maintain Provider and Facility will be exactly like Distributions above, just an interaction directed a PLR, rather than directed to a client's sytem.  The rules for Distributions apply to Maintain Bundles.

The logical ID of the transaction Bundle is assigned by the source of the message and is not intended to be used again.  The source today is required to use a unique identifier for each message and the logical ID can be that unique identifier.

The response SHALL be a Bundle with OperationOutcome and the modified or new resource(s) within the Bundle.  A maintain Bundle SHALL only update or create a single Provider or Facility.  Thus, if the message is requesting a relationship to a Provider be created, the target Provider SHALL already exist in PLR, otherwise the whole transaction Bundle is rolled back.

#### Batch
Batch also uses Bundles, but a batch Bundle.  A batch Bundle allows for many independent interactions to be sent in a single message.  The batch Bundle must contain at least one or more of:

1.	a transaction Bundle (with PractitionerRole(s) and Practitioner) to add/update an Individual Provider
2.	a transaction Bundle (with OrganizationAffiliation(s), PractitionerRole(s) and Organizations) to add/update an Organizational Provider
3.	a transaction Bundle (with OrganizationAffiliations(s) and PractitionerRole(s)) to add/update a Facility

The logical ID of a Batch SHOULD be assigned by the source; the unique identifier that PLR batch users are to the batch file SHALL be the logical ID.  The logical ID is transient and not meant to be used again in any way.  Within the batch Bundle each entry SHALL have a conformant logical ID if the transaction is to update an existing Provider or Facility.  If the transaction is to create, the logical ID is assigned by PLR and returned in the response Bundle.

The response Bundle is similarly structured to the request, populating and echoing back the results of each transaction.  The only difference is that OperationOutcome SHALL also be included for each transaction for acknowledgement and error messages - and a Bundle with a single OperationOutcome to cover the situation where the batch wasn't processed due to validation or non-business errors.

#### Query
PLR FHIR has defined a set of FHIR Operations to search for Providers and Facilities.  These are the only FHIR RESTful queries that are supported by PLR.  Operations are designed for searches where the server needs to play an active role in preparing the responses.  In PLR's case, the server would need to include resources that make up the full Provider and additionally return related Providers or Facilities.  Queries using PractitionerRole and OrganizationAffiliation are not permitted and unnecessary.

The two query operations are:

* $full - used to return the full [provider](OperationDefinition-bc-full-practitioner-query.html) or [organization or facility](OperationDefinition-bc-full-organization-facility-query.html) without following relationships
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

> We need to add the join parameters (or NOT).  I had envisioned supporting queries like Organziations in Kelowna where the Org would need a related Location in the city of Kelowna.  Or Nurses working in Kelowna where Practitioner has relationship to Location in Kelowna.  A limited set of parameters that may be used when we implement relationships.  PLR has nothing like this today, so may be we drop these until a future release?

> E.g practitioner search with location_city parameter means return providers that have any relationship to a Facility in location_city.  organization_city is similar.  You can guess what practitioner_city would mean, I'm searching for a Organization related to Practitioners in practitioner_city.

##### General Query Rules

> The search parameter list wasn't right. And we missed Facility parameters altogether.  We need to fix the IN parameters of the operations.

1. Allowed search parameters:
    * All Resources:
        * Identifier
        * City
    * Organization only:
        * Organization name
    * Location only:
        * Location name
        * Location Type
        * Location Purpose
        * Health Authority
        * Health Service Delivery Area
        * Local Health Area
        * Community Health Service Area
    * Practitioner only:
        * Role
        * Surname
        * Given name
        * Language
        * Expertise
        * Status code
        * Status reason code
        * Gender
2. Wild cards requirements are valid as per the Web interface and requirements which can be found in the PLR User Guide.
3. The logical ID as per FHIR conformance is the IPC or IFC.
4. OrganizationAffilication and PractitionerRole do not have logical IDs or business identifiers.  Searching by these resources is not permitted.

