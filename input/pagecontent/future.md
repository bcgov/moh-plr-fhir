{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.</p>
</blockquote>
{% endraw %}
At this time, this Implementation Guide includes requirements for PLR Providers and Facilities. 
The FHIR artifacts have been created according to the current understood expectations and schedules of our partners.
As the results some features are not released yet, they are marked on as DRAFT in the Specification page.


### Release - FHIR version 4.0 and BCFHIR version 1

The version information needs to be added in the message *HTTP Accept: Header* to access release 1
* fhirVersion=4.0;BCPLRVersion=1

This section describes everything that is available in this release.

#### Practitioner queries
##### EntityQuery
* Entity Query by IPC

        GET [Base]/Practitioner/<IPC>/$entityQuery

and where *IPC* is an IPC identifier, like IPC.00012345.BC.PRS.

* Entity Query search, using identifier

        GET [Base]/Practitioner/$entityQuery?identifier=<naming-system>|<value>

Users are also able to query using other PLR recognized identifiers by using parameters; the format of the identifier type is such as it is needed to pass the NamingSystem that defined the identifier. So *naming-system* is the naming system such as "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc" and *value* is the value of the identifier.

The full list of the mapping for the Naming system used in PLR is to find in this [file](PLR-NamingSystems.pdf). 

* Entity Query search, with other search parameters, see [details of the entityQuery](OperationDefinition-bc-entity-practitioner-query.html)

        GET [Base]/Practitioner/$entityQuery?family=D*&given=John

See the following section for more [details on operations](specification.html#query-part-1---operations).

##### RESTful queries
* Restful GET Query by IPC

        GET [Base]/Practitioner/<IPC>
        GET [Base]/Practitioner?_id=<IPC>&_revinclude=PractitionerRole:practitioner

* Restful GET search, with search parameters, only the following parameters are implemented in release 1

        GET [Base]/Practitioner?family=D*&given=John&gender=male&address-city=Richmond
        GET [Base]/Practitioner?identifier=<naming-system>|<value>&_revinclude=PractitionerRole:practitioner
        GET [Base]/Practitioner?family=PIPLott&given=Doris&address-city=Richmond&_has:PractitionerRole:practitioner:role=RN&_revinclude=PractitionerRole:practitioner

*_revinclude=PractitionerRole:practitioner* search parameter will include in the response the PractionerRole for each Practitioner.
*_has:PractitionerRole:practitioner:role=RN* search parameter allow to search for *role* in PractitionerRole instances

See examples of Responses payload for Restful Queries under [restful-examples](Bundle-Example-GET-Practitioner-Param-Response.html)

#### Organization queries
##### EntityQuery
* Entity Query by IPC

        GET [Base]/Organization/<IPC>/$entityQuery

and where *IPC* is an IPC identifier, like IPC.00012345.BC.PRS.

* Entity Query search, using identifier

        GET [Base]/Organization/$entityQuery?identifier=<naming-system>|<value>

The full list of the mapping for the Naming system used in PLR is to find in this [file](PLR-NamingSystems.pdf). 

* Entity Query search, with other search parameters, see [details of the entityQuery](OperationDefinition-bc-entity-organization-query.html)

        GET [Base]/Organization/$entityQuery?name=D*

See the following section for more [details on operations](specification.html#query-part-1---operations).

##### RESTful queries
* Restful GET Query by IPC

        GET [Base]/Organization/<IPC>

* Restful GET search, with search parameters, only the following parameters are implemented in release 1 

        GET [Base]/Organization?name=D*&type=CLINIC&address-city=Vancouver  
        GET [Base]/Organization?identifier=https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc|IPC.00150322.BC.PRS

_revinclude search is not implemented in release 1 for Organizations.
See examples of Response for Restful Queries under [restful-examples](Bundle-Example-GET-Organization-Response.html)

#### Location queries
##### EntityQuery
* Entity Query by IFC

        GET [Base]/Location/<IFC>/$entityQuery

and where *IFC* is an IFC identifier, like IFC.00012345.BC.PRS.

* Entity Query search, using identifier

        GET [Base]/Location/$entityQuery?identifier=<naming-system>|<value>

The full list of the mapping for the Naming system used in PLR is to find in this [file](PLR-NamingSystems.pdf). 

* Entity Query search, with other search parameters, see [details of the entityQuery](OperationDefinition-bc-entity-location-query.html)

        GET [Base]/Location/$entityQuery?name=D*

See the following section for more [details on operations](specification.html#query-part-1---operations).

##### RESTful queries
* Restful GET Query by IFC

        GET [Base]/Location/<IFC>

* Restful GET search, with search parameters, only the following parameters are implemented in release 1.

        GET [Base]/Location?address-line1=845 fort st&address-city=victoria&localHealthArea=Greater Victoria
        GET [Base]/Location?otheraddress-line1=845*t&address-city=victoria$healthServiceDeliveryArea=South Vancouver Island
        GET [Base]/Location?healthAuthority=Vancouver Island
        GET [Base]/Location?communityHealthServiceArea=Downtown Victoria
        GET [Base]/Location?identifier=https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc|IFC.00000059.BC.PRS

_revinclude search is not implemented in release 1 for Locations.
See examples of Response for Restful Queries under [restful-examples](Bundle-Example-GET-Location-Response.html)

#### Maintain operations - Practitioner, Organization and Location

A [Maintain operation](OperationDefinition-bc-maintain.html) is used by a user to communicate a change to a single Provider (Individual or Organizational) or Facility to PLR. 

        POST [Base]/$maintain
        
A Bundle is sent, wrapped in Parameters, and includes one of the following sets:

1.      PractitionerRole(s) and Practitioner;
2.      OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.      OrganizationAffiliation(s), PractitionerRole(s) and Location.

The PLR FHIR Server response will be a Bundle, wrapped in Parameters, with type set to “collection” that contains the created or updated resources that represent the Provider (Individual or Organizational) or Facility.  The Bundle includes the same set as request and an entry of OperationOutcome that has informational, warning or error messages.

See details [here too](specification.html#maintain---included-in-release-1)

#### Distributions

A [Distribution operation](OperationDefinition-bc-distribution.html) is used by PLR to communicate a change in a single Practitioner, Organization, or Location to an external connected system that subscribes to the distribution service. This is different from the FHIR Subscription model, but a custom PLR subscription service that requires the user to sign up with the Registry administrator and follow the setup and configuration guide.  
The distribution is sent from PLR to a client application, via a POST message to a defined endpoint URL. 

        POST [Base]/$distribution

The Bundle sent, wrapped in Parameters, should be processed by the client as an atomic commit and includes one of the following sets:

1.	PractitionerRole(s) and Practitioner;
2.	OrganizationAffiliation(s), PractitionerRole(s) and Organization;
3.	OrganizationAffiliation(s), PractitionerRole(s) and Location.

See details [here too](specification.html#distributions---included-in-release-1)

### Future Release

[Batch](specification.html#batch---future)

[Extended Queries](specification.html#extendedquery---future)

[Other Restful operations](specification.html#location)

