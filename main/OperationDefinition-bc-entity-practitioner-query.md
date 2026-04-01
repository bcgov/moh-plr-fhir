# Query for a practitioner without returning associations - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Query for a practitioner without returning associations**

## OperationDefinition: Query for a practitioner without returning associations 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-practitioner-query | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:PractitionerEntityQuery |

 
This operation is used to query for a practitioner and will return the information for that practitioner without following associations to other providers, organizations, or facilities. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-entity-practitioner-query",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-entity-practitioner-query",
  "version" : "1.0.0",
  "name" : "PractitionerEntityQuery",
  "title" : "Query for a practitioner without returning associations",
  "status" : "active",
  "kind" : "query",
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This operation is used to query for a practitioner and will return the information for that practitioner without following associations to other providers, organizations, or facilities.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "entityQuery",
  "resource" : ["Practitioner"],
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [{
    "name" : "identifier",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "family",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with the specified surname. May use trailing wildcards, e.g. Smith*",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "given",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with the specified given name. May use trailing wildcards, e.g. Ann*",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "status",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with a license that has the specified status.",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "address-city",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with an address that includes the given city.",
    "type" : "string",
    "searchType" : "string"
  },
  {
    "name" : "gender",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with the specified gender.",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "role",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners that have an associated PractitionerRole code with the specified value (e.g. MD or RN)",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "communication",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners who can communicate with the specified language code. May be a comma separated list of language codes, e.g. F01,E09.",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "expertise",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with a qualification that matches the specified expertise. May be a comma separated list of expertise codes, e.g. AM53,K34.",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "status-reason",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Search for practitioners with a license that has the specified status reason.",
    "type" : "string",
    "searchType" : "token"
  },
  {
    "name" : "withHistory",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "true or false, The withHistory parameter instructs PLR to search through historical records for matching attributes. Only the current data is returned.",
    "type" : "boolean"
  },
  {
    "name" : "bundle",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The Response Bundle with the OperationOutcome and the list of BCPractitionerBundle found by the search.",
    "type" : "Bundle"
  }]
}

```
