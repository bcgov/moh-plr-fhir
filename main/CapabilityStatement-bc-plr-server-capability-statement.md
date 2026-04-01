# BC PLR Server Capability Statement - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC PLR Server Capability Statement**

## CapabilityStatement: BC PLR Server Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/CapabilityStatement/bc-plr-server-capability-statement | *Version*:1.0.0 |
| Active as of 2024-03-20 | *Computable Name*:BCPLRServerCapabilityStatement |

 
This capability statement is listing the RESTful resources that are exposed as well as the three use cases that are supported by the BC FHIR implementation of PLR (see json or XML for more details): 
* Maintain - used when an external source is communicating a change to PLR
* Batch - allows for the sending of multiple Maintain transactions at one time (not implemented yet)
* Queries - a set of operations are defined that allow the querying of PLR FHIR instances (entityQuery and extendedQuery)
 
All POST and PUT Requests are sent using a Paramaters resource and the Response is always a Bundle resource containing an OperationOutcome and the expected profile(s) (BCPractitioner, BCPractitionerBundle ect …) 

 [Raw OpenAPI-Swagger Definition file](bc-plr-server-capability-statement.openapi.json) | [Download](bc-plr-server-capability-statement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "bc-plr-server-capability-statement",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/CapabilityStatement/bc-plr-server-capability-statement",
  "version" : "1.0.0",
  "name" : "BCPLRServerCapabilityStatement",
  "title" : "BC PLR Server Capability Statement",
  "status" : "active",
  "date" : "2024-03-20",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This capability statement is listing the RESTful resources that are exposed as well as the three use cases that are supported by the BC FHIR implementation of PLR (see json or XML for more details):\n* Maintain - used when an external source is communicating a change to PLR\n* Batch - allows for the sending of multiple Maintain transactions at one time (not implemented yet)\n* Queries - a set of operations are defined that allow the querying of PLR FHIR instances (entityQuery and extendedQuery)\n\nAll POST and PUT Requests are sent using a Paramaters resource and the Response is always a Bundle resource containing an OperationOutcome and the expected profile(s) (BCPractitioner, BCPractitionerBundle ect ...)\n",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "_format" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
      "valueCode" : "SHALL"
    }]
  }],
  "implementationGuide" : ["https://fhir-guide.hlth.gov.bc.ca/ProviderLocationRegistry/"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "type" : "Practitioner",
      "profile" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner",
      "supportedProfile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-bundle"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "RESTful GET service"
      },
      {
        "code" : "search-type",
        "documentation" : "RESTful Search"
      }],
      "searchRevInclude" : ["PractitionerRole:practitioner"],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "string",
        "documentation" : "Practitioner identifier, format <naming-system>|<value>"
      },
      {
        "name" : "_id",
        "type" : "string",
        "documentation" : "Practitioner IPC, unique identifier"
      },
      {
        "name" : "family",
        "type" : "string",
        "documentation" : "Practitioner family name"
      },
      {
        "name" : "given",
        "type" : "string",
        "documentation" : "Practitioner given name"
      },
      {
        "name" : "gender",
        "type" : "string",
        "documentation" : "Practitioner gender"
      },
      {
        "name" : "address-city",
        "type" : "string",
        "documentation" : "Practitioner city"
      },
      {
        "name" : "_has",
        "type" : "string",
        "documentation" : "PractitionerRole:practitioner:role= <role>"
      }],
      "operation" : [{
        "name" : "entityQuery",
        "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-practitioner-query"
      },
      {
        "name" : "extendedQuery",
        "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-practitioner-query",
        "documentation" : "FUTURE"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization",
      "supportedProfile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-bundle"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "RESTful GET service"
      },
      {
        "code" : "search-type",
        "documentation" : "RESTful Search"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "string",
        "documentation" : "Organization identifier, format <naming-system>|<value>"
      },
      {
        "name" : "name",
        "type" : "string",
        "documentation" : "Organization name"
      },
      {
        "name" : "type",
        "type" : "string",
        "documentation" : "Organization role type"
      },
      {
        "name" : "address-city",
        "type" : "string",
        "documentation" : "Organization city"
      }],
      "operation" : [{
        "name" : "entityQuery",
        "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-organization-query"
      },
      {
        "name" : "extendedQuery",
        "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-organization-query",
        "documentation" : "FUTURE"
      }]
    },
    {
      "type" : "Location",
      "profile" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location",
      "supportedProfile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-bundle"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "RESTful GET service"
      },
      {
        "code" : "search-type",
        "documentation" : "RESTful Search"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "type" : "string",
        "documentation" : "Location identifier, format <naming-system>|<value>"
      },
      {
        "name" : "address-city",
        "type" : "string",
        "documentation" : "Location city"
      },
      {
        "name" : "address-line1",
        "type" : "string",
        "documentation" : "Location city"
      },
      {
        "name" : "otheraddress-line1",
        "type" : "string",
        "documentation" : "Location city"
      },
      {
        "name" : "healthServiceDeliveryArea",
        "type" : "string",
        "documentation" : "Location health Service Delivery Area"
      },
      {
        "name" : "healthAuthority",
        "type" : "string",
        "documentation" : "Location health Authority"
      },
      {
        "name" : "communityHealthServiceArea",
        "type" : "string",
        "documentation" : "Location community Health Service Area"
      },
      {
        "name" : "localHealthArea",
        "type" : "string",
        "documentation" : "Location local Health Area"
      }],
      "operation" : [{
        "name" : "entityQuery",
        "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-location-query"
      },
      {
        "name" : "extendedQuery",
        "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-location-query",
        "documentation" : "FUTURE"
      }]
    }],
    "operation" : [{
      "name" : "maintain",
      "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-maintain",
      "documentation" : "A BC resource Bundle is sent to create/update one resource"
    },
    {
      "name" : "batch",
      "definition" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-batch",
      "documentation" : "A BC resource Bundle is sent to create/update multiple resources (Practitioner only for now)"
    }]
  }]
}

```
