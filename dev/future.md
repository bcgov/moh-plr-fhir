# Releases and Future Plans - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* **Releases and Future Plans**

## Releases and Future Plans

At this time, this Implementation Guide includes requirements for PLR Providers and Facilities. The FHIR artifacts have been created according to the current understood expectations and schedules of our partners. As a result some features are not released yet, they are marked on as DRAFT in the Specification page.

### Release - FHIR version 4.0 and BCFHIR version 1

The version information needs to be added in the message **HTTP Accept: Header** to access release 1

* fhirVersion=4.0;BCPLRVersion=1

This section describes everything that is available in this release.

#### Practitioner queries

##### EntityQuery

* Entity Query by IPC

and where **IPC** is an IPC identifier, like IPC.00012345.BC.PRS.

* Entity Query search, using identifier

Users are also able to query using other PLR recognized identifiers by using parameters; the format of the identifier type is such as it is needed to pass the NamingSystem that defined the identifier. So **naming-system** is the naming system such as "https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ipc" and **value** is the value of the identifier.

The full list of the mapping for the Naming system used in PLR is to find in this [file](PLR-NamingSystems.pdf).

* Entity Query search, with other search parameters, see [details of the entityQuery](OperationDefinition-bc-entity-practitioner-query.md)

See the following section for more [details on operations](specification.md#query-part-1---operations).

##### RESTful queries

* Restful GET Query by IPC
* Restful GET search, with search parameters, only the following parameters are implemented in release 1

**_revinclude=PractitionerRole:practitioner** search parameter will include in the response the PractionerRole for each Practitioner. **_has:PractitionerRole:practitioner:role=RN** search parameter allow to search for **role** in PractitionerRole instances

See examples of Responses payload for Restful Queries under [restful-examples](Bundle-Example-GET-Practitioner-Param-Response.md)

#### Organization queries

##### EntityQuery

* Entity Query by IPC

and where **IPC** is an IPC identifier, like IPC.00012345.BC.PRS.

* Entity Query search, using identifier

The full list of the mapping for the Naming system used in PLR is to find in this [file](PLR-NamingSystems.pdf).

* Entity Query search, with other search parameters, see [details of the entityQuery](OperationDefinition-bc-entity-organization-query.md)

See the following section for more [details on operations](specification.md#query-part-1---operations).

##### RESTful queries

* Restful GET Query by IPC
* Restful GET search, with search parameters, only the following parameters are implemented in release 1

_revinclude search is not implemented in release 1 for Organizations. See examples of Response for Restful Queries under [restful-examples](Bundle-Example-GET-Organization-Response.md)

#### Location queries

##### EntityQuery

* Entity Query by IFC

and where **IFC** is an IFC identifier, like IFC.00012345.BC.PRS.

* Entity Query search, using identifier

The full list of the mapping for the Naming system used in PLR is to find in this [file](PLR-NamingSystems.pdf).

* Entity Query search, with other search parameters, see [details of the entityQuery](OperationDefinition-bc-entity-location-query.md)

See the following section for more [details on operations](specification.md#query-part-1---operations).

##### RESTful queries

* Restful GET Query by IFC
* Restful GET search, with search parameters, only the following parameters are implemented in release 1.

_revinclude search is not implemented in release 1 for Locations. See examples of Response for Restful Queries under [restful-examples](Bundle-Example-GET-Location-Response.md)

#### Maintain operations - Practitioner, Organization and Location

A [Maintain operation](OperationDefinition-bc-maintain.md) is used by a user to communicate a change to a single Provider (Individual or Organizational) or Facility to PLR.

```
    POST [Base]/$maintain

```

A Bundle is sent, wrapped in Parameters, and includes one of the following sets:

1. PractitionerRole(s) and Practitioner;
1. OrganizationAffiliation(s), PractitionerRole(s) and Organization;
1. OrganizationAffiliation(s), PractitionerRole(s) and Location.

The PLR FHIR Server response will be a Bundle, wrapped in Parameters, with type set to “collection” that contains the created or updated resources that represent the Provider (Individual or Organizational) or Facility. The Bundle includes the same set as request and an entry of OperationOutcome that has informational, warning or error messages.

See details [here too](specification.md#maintain---included-in-release-1)

#### Distributions

A [Distribution operation](OperationDefinition-bc-distribution.md) is used by PLR to communicate a change in a single Practitioner, Organization, or Location to an external connected system that subscribes to the distribution service. This is different from the FHIR Subscription model, but a custom PLR subscription service that requires the user to sign up with the Registry administrator and follow the setup and configuration guide.
 The distribution is sent from PLR to a client application, via a POST message to a defined endpoint URL.

```
    POST [Base]/$distribution

```

The Bundle sent, wrapped in Parameters, should be processed by the client as an atomic commit and includes one of the following sets:

1. PractitionerRole(s) and Practitioner;
1. OrganizationAffiliation(s), PractitionerRole(s) and Organization;
1. OrganizationAffiliation(s), PractitionerRole(s) and Location.

See details [here too](specification.md#distributions---included-in-release-1)

### Future Release

[Batch](specification.md#batch---future)

[Extended Queries](specification.md#extendedquery---future)

[Other Restful operations](specification.md#location)

