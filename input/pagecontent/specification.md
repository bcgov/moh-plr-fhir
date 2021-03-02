### How do PLR FHIR Messages fit into BC Core Specifications?

### FHIR Resources

In FHIR, the resources used are named Practitioner, Organization, and Location.

Each Individual Provider is composed of a Practitioner resource and at least one Practitioner Role which holds the Providers role, such as Nurse or Dentist.

Each Organizational Provider is composed of an Organization resource with zero or more Practitioner Roles or Organization Affiliations that store relationship references.

Each Facility is composed of a Location resource with zero or more Practitioner Roles or Organizations for relationship references.

A person may be in PLR twice, once for each role, such as a Nurse and Dentist.  This means in FHIR there will be two Practitioner resources, one for Nurse and one for Dentist, each Practitioner resource being identical*, distinguishable only by reviewing the associated Practitioner Role resources.  It is best practice to treat the Dentist and Nurse as unique Practitioners in the context of FHIR messages to BC PLR.

*Parts of the Practitioner resource may not be identical if the Provider gave the College of Nursing a slightly different name than the College of Dentistry (like short forms, or last name changes).

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="bc_fhir_prac_org_fac.png" alt="BC FHIR Resources"/>
  <figcaption>Figure 2.1 - BC FHIR Resources</figcaption>
</figure>
{::options parse_block_html="true" /}

The above diagram uses aggregation, the Organization and Location resources can exist without Practitioner Roles.

### Relationships between Resources
#### Provider to Provider Relationships
One Practitioner Role for each Individual to Individual relationship.
One Practitioner Role for each Organization to Individual relationship.
One Organization Affiliation for each Organization to Organization relationship.

#### Provider to Facility Relationships
One Practitioner Role for each Location to Individual relationship.
One Organization Affiliation for each Location to Organization relationship.

### Message Use Cases

#### Distributions
PUT /Bundle/123445

The transaction Bundle includes one of the following sets:

1.	PractitionerRole(s) and Practitioner;
2.	OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.	Location, OrganizationAffiliation(s), PractitionerRole(s).  

One PUT message per distribution and each distribution has a single Provider or Facility (as we do today).  Each distribution message has a logical ID which is a database unique key (event item id column).  This logical ID is not intended to be used in any other message.  I.e. one can not request the Bundle with GET /Bundle/123445; I am only stating this to keep scope smaller … we could implement the GET if desired.

The response to a distribution must be HTTP 200 or 201 OK.  Anything else and the reliable messaging function will retry to send the message until a 200 is received back.

#### Batch
Batch also uses Bundles, but a batch Bundle.  A batch Bundle allows for many independent transactions to be in a single message (as we do today).  The batch Bundle must contain at least one or more of:

1.	a transaction Bundle (with PractitionerRole(s) and Practitioner) to add/update a Ind. Provider
2.	a transaction Bundle (with OrganizationAffiliation(s), PractitionerRole(s) and Organizations) to add/update a Org. Provider
3.	a transaction Bundle (with OrganizationAffiliations(s) and PractitionerRole(s)) to add/update a Facility

Batch is not a web service, but a file uploaded to an ftp site.  The logical ID of a Batch should be assigned by the source; PLR batch users should be assigning a unique identifier to the batch file (requirement today) so that will have to be the logical ID.  The logical ID is transient and not meant to be used again in any way.  Within the batch Bundle each transaction will have a conformant logical ID if the transaction is to update an existing Provider or Facility.  If the transaction is to create, the logical ID is assigned by PLR and returned in the response Bundle.

The response Bundle is similarly structured to the request, populating and echoing back the results of each transaction.  The only difference is that OperationOutcome should also be included for each transaction for acknowledgement and error messages - and a Bundle with a single OperationOutcome to cover the situation where the batch wasn't processed due to validation or non-business errors.

#### Query

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

The matrix below shows how one could use include/revinclude searches starting From a FHIR resource To an associated FHIR resource following references.  It gets complicated to find references to Location as you have to reverse include.  Also to reverse include and return the full Provider also gets difficult.

| **From/To** | Practitioner | PractitionerRole | Organization | OrganizationAffiliation | Location |
| --- | --- | --- | --- | --- | --- |
| Practitioner | n/a | revinclude | n/a | n/a | n/a |
| PractitionerRole | include | n/a | include | n/a | include |
| Organization | n/a | revinclude | n/a | revinclude | n/a |
| OrganizationAffiliation | n/a | n/a | include | n/a | include |
| Location | n/a | revinclude | n/a | revinclude | n/a |
{:.grid}

The proposal is to use FHIR Operations to search for Providers and Facilities.  Operations are designed for searches where the server needs to play an active role in preparing the responses.  In PLR's case, the server would need to include resources that make up the full Provider or additionally return the full Provider and related Providers or Facilities.  Queries using PractitionerRole and OrganizationAffiliation are not permitted and unnecessary.

##### Return the Full Provider or Facility
GET /<resource>/<id>/$full
GET /<resource>/$full?<operation param 1>&<operation param 2>&...
The operational parameters will need to be defined for the $full operation but more than likely these will be the standard search parameters.

##### Return the full Provider or Facility and Return All the Directly Referenced Providers or Facilities
GET /<resource>/<id>/$dereference
GET /<resource>/$dereference?<operation param 1>&<operation param 2>&...

These operational parameters, in addition to the standard search parameters will need to include the 'join' parameters.  Like location_city, org_name, practitioner_gender, practitionerrole_specialty, etc

#### Queries in Business Terms
##### I want to find a Facility by name and include all relationships
GET /Location/$full?org_name=St John Clinic

##### I want to find all Nurses working in Kelowna health care Facilities.
GET /Practitioner/$full?roleType=RN&location-city=Kelowna&location-reln-type=employee

##### I want to find all Facilities owned by Good Health Clinic.
GET /Location/$full?org-name=Good Health Clinic&location-reln-type=owned

##### I want to find all Providers related to a particular Provider
GET /Practitioner/IPC.00034542.PRS.BC/$dereference?_filterOutResources=Location,self

##### I want to find all Facilities and Providers related to Vancouver General Hospital
GET /Location/$dereference?name=Vancouver General Hospital&_filterOutResources=self

#### Maintain
Maintain Provider and Facility will be exactly like Distributions above, just an incoming message, rather than an outbound message.

The logical ID of the transaction Bundle is assigned by the source of the message and is not intended to be used again.  The source today requires a unique identifier for each message, and the logical ID can be that unique identifier.
The response will also be a Bundle with OperationOutcome and the modified or new resource(s) within the Bundle.  A maintain Bundle must only update or create a single Provider or Facility.  Thus, if the message is requesting a relationship to a Provider be created that target Provider must already exist in PLR, otherwise the whole transaction Bundle is rolled back.

##### Create a new Provider
PUT /Bundle

##### Update an existing Provider
PUT /Bundle/234432

### Query Design

#### Query Relationships

### Capability Statement

### Special Notes

#### Providers and Roles
#### Provider Role and Expertise
One mandatory Practitioner Role must be related to the Practitioner.
One optional Practitioner Role for all Expertise (Specialty), specialty is a list.

#### Organizations and Roles

### Do's and Don'ts
