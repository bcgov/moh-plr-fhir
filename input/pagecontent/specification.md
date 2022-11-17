{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.  For more information, please see the <a href="future.html">Future Plans</a> page in this guide.</p>
</blockquote>
{% endraw %}
### FHIR Resources

In FHIR, the primary resources used are named Practitioner, Organization, and Location.  BC has created profiles of each of these resources for use in the PLR system.  The BC profiles are dependent on the Canadian FHIR Baseline.

#### Individual Provider
Each Individual Provider is composed of a [Practitioner instance](StructureDefinition-bc-practitioner.html) and at least one [PractitionerRole instance](StructureDefinition-bc-practitioner-role.html) which holds the Practitioner's role, such as Nurse or Dentist and specialties.

Any other PractitionerRole instances will hold the relationships between an Individual Provider and related Facilities and to Organizational Providers.  A single PractitionerRole instance contains a single relationship.  Thus multiple PractitionerRoles will be required to represent multiple relationships.  There is an [extension](StructureDefinition-bc-practitioner-relationship-extension.html) off Practitioner that represents relationships between Individual Providers.

#### Organizational Provider
Each Organizational Provider is composed of an [Organization instance](StructureDefinition-bc-organization.html) with zero or more [OrganizationAffiliation instances](StructureDefinition-bc-organization-affiliation.html) and zero or more [PractitionerRole instances](StructureDefinition-bc-practitioner-role.html).

The PractitionerRole is used to represent relationships from Individual Providers to Organizational Providers. OrganizationAffiliation holds the relationship betwen two different Organizational Providers as well as the relationship between an Organizational Provider and Facilities.  A single OrganizationAffilication instance contains a single relationship.  Thus multiple OrganizationAffilications will be required to represent multiple relationships.  The same applies to PractitionerRole.

#### Facility

Each Facility is composed of a [Location instance](StructureDefinition-bc-location.html).

The relationship between a Facility and a Individual Provider is conveyed in a [PractitionerRole instance](StructureDefinition-bc-practitioner-role.html) while the relationship between a Facility and an Organizational Provider is conveyed in an [OrganizationAffiliation instance](StructureDefinition-bc-organization-affiliation.html).  As above multiple PractitionerRoles and OrganizationAffiliations will be required to represent multiple relationships.

#### Healthcare Providers with Multiple Roles
A practitioner providing services in multiple roles, for example, as a Nurse or a Dentist, will have a separate record in PLR for each role.  This means in FHIR there will be two Practitioner instances, one for Nurse and one for Dentist, each Practitioner instance being identical, distinguishable only by reviewing the associated Practitioner Role profile instance.  Note that strictly speaking, parts of the Practitioner instances that represent the same person may not be identical if the Provider gave the College of Nurses a slightly different name than the College of Dental Surgeons (like short forms, or last name changes).  It is best practice to treat the Dentist and Nurse as unique Practitioners in the context of FHIR interactions and BC PLR.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="400px" src="bc_fhir_prac_org_fac.png" alt="BC FHIR Resources"/>
  <figcaption>Figure 2.1 - BC FHIR Resources</figcaption>
</figure>
{::options parse_block_html="true" /}


### Relationships between Resources
#### Provider to Provider Relationships

##### Individual Provider to Individual Provider
Individual Provider to Individual Provider relationships are used for showing how Providers are related to each other.  For instance, a LOCUM Provider can be referenced using this capability.
To show the relationship between two Individual Providers, the [BC Practitioner Relationship extension](StructureDefinition-bc-practitioner-relationship-extension.html) was created for the Practitioner resource.  This allows for a relationship type and a linkage between two BC Practitioners to be stated.  NOTE: It is expected that the relationship would be found on both Practitioner instances.

##### Individual Provider to Organizational Provider
To show the relationship between an Individual Provider and an Organizational Provider (i.e. a Provider working at a hospital), the [BC PractitionerRole profile](StructureDefinition-bc-practitioner-role.html) is used.  This resource has a practitioner data element and an organization data element along with an extension that is used to describe the role the Individual Provider plays at the organization, e.g. employed by.

##### Organizational Provider to Organizational Provider
To show the relationship between two Organizational Providers (i.e. a subsidiary organization or a care team related to Good Health Clinic Inc.), the [BC OrganizationAffiliation profile](StructureDefinition-bc-organization-affiliation.html) is used.  This resource has an organization data element and a participating organization data element along with a code that is used to indicate the nature of the affiliation between the two organizations.

#### Provider to Facility Relationships

##### Individual Provider to Facility
To show the relationship between an Individual Provider and a Facility (i.e. a works-at relationship), the [BC PractitionerRole profile](StructureDefinition-bc-practitioner-role.html) is used.  Instead of the organization data element, the location data element is used to indicate that a Provider is related to a Facility.

##### Organization Provider to Facility
To show the relationship between an Organizational Provider and a Facility (i.e. facilities where the organization does its work), the [BC OrganizationAffiliation profile](StructureDefinition-bc-organization-affiliation.html) is used.  Instead of the participating organization data element, the location data element is used to indicate that an organization is related to a Facility.

### Use Cases
There are a number of use cases that support the existing PLR functionality:

* Distributions - used when PLR is communicating a change in a single Practitioner, Organization, or Location
* Maintain - used when an external source is communicating a change to a Practitioner, Organization or Location
* Batch - allows for the sending of multiple Maintain interactions in a single request
* Queries - a set of FHIR Operations are defined that allow the querying of PLR FHIR instances

#### Distributions

A [Distribution operation](OperationDefinition-bc-distribution.html) is used by PLR to communicate a change in a single Practitioner, Organization, or Location to an external connected system that subscribes to the distribution service.  To be clear, this is not the FHIR Subscription model, but a custom PLR subscription service that requires the user to sign up with the Registry administrator and follow the setup and configuration guide.  
The distribution is sent from PLR to a client application by sending a Bundle (of type 'collection') wrapped in Parameters, via a RESTful POST to a client nominated endpoint URL.  The Bundle is intended to be processed by the client as an atomic commit where the entire set of changes succeed or fail as a single entity.  The Bundle includes one of the following sets:

1.	PractitionerRole(s) and Practitioner;
2.	OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.	OrganizationAffiliation(s), PractitionerRole(s) and Location.

There will be one POST request per distribution and each distribution will have a single Practitioner, Organization, or Location.

POST https://.../$distribution

The response to a distribution SHALL be HTTP 200 or 201 OK.  Anything else and the reliable messaging function will retry to send the request until a 200 is received back or times out.


#### Maintain
A [Maintain operation](OperationDefinition-bc-maintain.html) is used by a user to communicate a change to a single Provider (Individual or Organizational) or Facility to PLR. A Bundle is sent in the parameters and includes one of the following sets:

1.      PractitionerRole(s) and Practitioner;
2.      OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.      OrganizationAffiliation(s), PractitionerRole(s) and Location.


POST https://.../$maintain

The PLR FHIR Server response will be a Bundle with type set to “collection” that contains the created or updated resources that represent the Provider (Individual or Organizational) or Facility.  The Bundle includes one of the following sets (same as request):

1.      PractitionerRole(s) and Practitioner;
2.      OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.      OrganizationAffiliation(s), PractitionerRole(s) and Location;
4.      OperationOutcome

The response also has an entry of OperationOutcome that has information, warning or error messages.

A maintain Bundle SHALL only update or create a single Provider or Facility.  Thus, if the message is requesting a relationship to a Provider be created, the target Provider SHALL already exist in PLR.

#### Batch
Batch allows for many independent transactions to be sent in a single operation. It also uses Bundles, but a batch Bundle (Bundle.type = 'batch'), that wraps a number of Bundles. The batch Bundle is not expected in the parameters but as a JSON file. It must contain at least one or more of:

1.	a collection-Bundle (with PractitionerRole(s) and Practitioner) to add/update an Individual Provider
2.	a collection-Bundle (with OrganizationAffiliation(s), PractitionerRole(s) and Organization) to add/update an Organizational Provider
3.	a collection-Bundle (with OrganizationAffiliations(s), PractitionerRole(s), and Location) to add/update a Facility

The response Bundle is similarly structured to the request, populating and echoing back the results of each contained Bundle.  The only difference is that OperationOutcome SHALL also be included for each collection-Bundle for acknowledgement and error messages - and a Bundle with a single OperationOutcome to cover the situation where the batch wasn't processed due to validation or non-business errors.

The Batch interface is only available on PLR's FTP interface, not web services, at this time.

#### Query Part 1 - Operations
PLR FHIR has defined a set of FHIR Operations to search for Providers and Facilities.  Operations are designed for searches where the server needs to play an active role in preparing the responses.  In PLR's case, the server would need to include resources that make up the full Provider and additionally return related Providers or Facilities.

The two query operations are:

* $entityQuery - used to return the full [Individual](OperationDefinition-bc-entity-practitioner-query.html) or [Organization](OperationDefinition-bc-entity-organization-query.html) or [Facility](OperationDefinition-bc-entity-location-query.html) without following relationships
* $extendedQuery - used to return the full [Individual](OperationDefinition-bc-extended-practitioner-query.html) or [Organization](OperationDefinition-bc-extended-organization-query.html) or [Facility](OperationDefinition-bc-extended-location-query.html) along with all directly referenced Individuals, Organizations or Facilities

The syntax for the $entityQuery operation is:

* GET /resource/<id>/$entityQuery to retrieve a specific Provider or Facility where the id is known
* GET /resource/$entityQuery?param1&param2&... to search for a Provider or Facility with search parameters instead of an id

Although PLR supports many different types of identifiers, the resource id is the identifier assigned by PLR when the resource is created, internally called the IPC for Providers and IFC for Facilities.  This id is always returned in the response and should be persisted by the requestor.  To search for other identifiers stored in PLR and attached to Providers or Facilities, the search parameter 'identifier' and 'identifier-type' should be used.

The parameters for the $entityQuery operation will be the search parameters listed further below.

The syntax for the $extendedQuery operation is:

* GET /resource/id/$extendedQuery to retrieve the full information about a specific Provider or Facility where the id is known
* GET /resource/$extendedQuery?param1&param2&... to search and retrieve the full information about a Provider or Facility

The parameters for the $extendedQuery operation will be the search parameters listed below.

##### Example Search Set Response Bundle

Below is a sample search set response bundle.  It shows the structure at a highlevel, as described on this web page.  If this was an Organization search the structure is the same, however the Bundles would include Organization and OrganizationAffilication(s).

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="400px" src="bc_searchset_bundle_practitioner_response.png" alt="BC FHIR Resources"/>
  <figcaption>Figure 2.2 - BC FHIR Query Response Bundle Structure</figcaption>
</figure>
{::options parse_block_html="true" /}

A FHIR example of a real message can be found [here](Bundle-Example-Response-Query-Practitioner-Bundle.html).

##### Query Supported Search Parameters

|Resource|Search Parameter Name|Additional Information
|----|:----|:---|
|Practitioner
||given-name|String, May use trailing wildcards, e.g. Ann*|
||surname|String, May use trailing wildcards, e.g. Ann*|
||role|String code
||language|May be a comma separated list of language codes, e.g. F01,E09.
||expertise|May be a comma separated list of expertise codes, e.g. AM53,K34.
||status|String code
||status-reason|String code
||address-city|String, full city name, e.g. Vancouver
||withHistory|true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes.  Only the current data is returned.|
||identifier|String identifier value
||identifier-type|String code, the type of Identifier, e.g. CPSID
|Organization
||name|String, May use trailing wildcards, e.g. Clinic*|
||description|String, May use trailing wildcards, e.g. Clinic*|
||address-city|String, full city name, e.g. Vancouver
||withHistory|true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes.  Only the current data is returned.|
||identifier|String identifier value
||identifier-type|String identifier value, e.g. ORGID
|Location
||name|String, May use trailing wildcards, e.g. Clinic*|
||address-city|String, full city name, e.g. Vancouver
||healthAuthority| String, only one of healthAuthority, healthServiceDeliveryArea, localHealthArea, communityHealthServiceArea allowed.  The full name is required.  E.g. Langford/Highlands|
||healthServiceDeliveryArea|See healthAuthority|
||localHealthArea|See healthAuthority|
||communityHealthServiceArea|See healthAuthority|
||identifier|String identifier value
||identifier-type|String code, the type of Identifier, e.g. LOCID

#### Query Part 2

The initial design covers all the use cases where the user is interested in receiving or updating the full Provider (Individual or Organizational) or Facility (Location) dataset. As a result several FHIR resources are returned or submitted in a Bundle; those resources represent the full dataset of a Provider or Facility. 

A resource based RESTful approach breaks down queries into resource focused, interactions.

The following describes the request URL and which profiles are returned:

|Request URL|Instance Returned|
|:----|:----|
|GET Practitioner/<IPC> | [BCPractitioner](StructureDefinition-bc-practitioner.html) |
|GET PractitionerRole/<IPC or Relationship-id>  |[BCPractitionerRole](StructureDefinition-bc-practitioner-role.html) for the practitioner's role and specialties information, and/or [BCRoleRelationship](StructureDefinition-bc-role-relationships.html), for the relationships info between practitioner and organization or location|
|GET Location/<IFC> | [BCLocation](StructureDefinition-bc-location.html) |
|GET Organization/<IPC> | [BCOrganization](StructureDefinition-bc-organization.html) |
|GET OrganizationAffiliation/<IPC or Relationship-id> | [BCOrgnizationAffiliation](StructureDefinition-bc-organization-affiliation.html)|
{:.grid}

##### Practitioner 
Returns a single ressource; id for Practitioner is the **IPC identifier**
```htm
GET Practitioner/IPC.00012343.BC.PRS 
```

##### Organization 
Returns a single resource; id for Organization is the **IPC identifier**
```htm
GET Organization/IPC.00012343.BC.PRS
```


##### Location 
Returns a single resource; id for Location is the **IFC identifier**
```htm
GET Location/12345
``` 
##### PractitionerRole 

Id for PractitionerRole can be 
* the **IPC identifier** for the BCPractionerRole instance carrying the Practionner's role and specialties information
```htm
GET PractitionerRole/IPC.00012343.BC.PRS
```
* or a **relationship identifier** that will return a single BCRoleRelationship instance
```htm
GET PractitionerRole/RELNS.1234.BC.PRS
```


###### PractitionerRole - Parameters

Several search parameters are available:
* practitioner
* organization
* location


This returns all the PractitionerRoles related to a Practitioner (BCPractionerRole and BCRoleRelationship)
```htm
GET PractitionerRole?practitioner=Practitioner/IPC.00012343.BC.PRS
```

This returns all the PractitionerRoles related to an Organization (of instance BCRoleRelationship only)
```htm
GET PractitionerRole?organization=Organization/IPC.00012343.BC.PRS
```

This returns all the PractitionerRoles related to a Location (of instance BCRoleRelationship only)
```htm
GET PractitionerRole?location=Location/12343
```


#####  OrganizationAffiliation

This returns a single resource; id for OrganizationAffiliation is a relationship ID
```htm
GET OrganizationAffiliation/RELNS.1234.BC.PRS
```
 
###### OrganizationAffiliation - Parameters

Paramaters to search with are:
* organization
* location

This returns all OrganizationAffiliations for the specified Organization
```htm
GET OrganizationAffiliation?organization=Organization/IPC.00012343.BC.PRS
```

This returns all OrganizationAffiliations for the specified Location
```htm
GET OrganizationAffiliation?location=Location/12343
```

