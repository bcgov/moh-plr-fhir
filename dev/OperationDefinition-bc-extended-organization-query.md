# Query for an organization that returns associated resources - FUTURE - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Query for an organization that returns associated resources - FUTURE**

## OperationDefinition: Query for an organization that returns associated resources - FUTURE 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-organization-query | *Version*:1.0.0 |
| Draft as of 2026-01-23 | *Computable Name*:OrganizationExtendedQuery |

 
This operation is used to query for an organization and will return the information for that organization along with any instances that can be found by following associations to other practitioners, organizations, or locations. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-extended-organization-query",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-extended-organization-query",
  "version" : "1.0.0",
  "name" : "OrganizationExtendedQuery",
  "title" : "Query for an organization that returns associated resources - FUTURE",
  "status" : "draft",
  "kind" : "query",
  "date" : "2026-01-23T00:06:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [
    {
      "name" : "BC Ministry of Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
        }
      ]
    }
  ],
  "description" : "This operation is used to query for an organization and will return the information for that organization along with any instances that can be found by following associations to other practitioners, organizations, or locations.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA",
          "display" : "Canada"
        }
      ]
    }
  ],
  "code" : "extendedQuery",
  "resource" : ["Organization"],
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [
    {
      "name" : "identifier",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "String, representing the full identifier value with system and value, e.g. identifier=[system]|[value]",
      "type" : "string",
      "searchType" : "string"
    },
    {
      "name" : "name",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Search for organizations with the specified name, mandatory if no identifier specified. May use trailing wildcards, e.g. Clinic*",
      "type" : "string",
      "searchType" : "string"
    },
    {
      "name" : "description",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Search for organizations with the specified description, mapping to BCOrganization.alias. May use trailing wildcards, e.g. Clinic*",
      "type" : "string",
      "searchType" : "string"
    },
    {
      "name" : "type",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Search for organizations with the specified role type code, mandatory if no identifier specified, mapping to Organization.type",
      "type" : "string",
      "searchType" : "token"
    },
    {
      "name" : "address-line1",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Search will run on Physical address, then Mailing address if no match was found on. May use trailing wildcards",
      "type" : "string",
      "searchType" : "string"
    },
    {
      "name" : "address-city",
      "use" : "in",
      "min" : 0,
      "max" : "1",
      "documentation" : "Search for organizations with the specified city.",
      "type" : "string",
      "searchType" : "string"
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
      "documentation" : "The Response Bundle with the OperationOutcome and the list of BCOrganizationBundle found by the search.",
      "type" : "Bundle"
    }
  ]
}

```
