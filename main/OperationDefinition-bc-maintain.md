# Maintain PLR entities. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Maintain PLR entities.**

## OperationDefinition: Maintain PLR entities. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-maintain | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:Maintain |

 
This operation is used to create and update the resources that represent a Provider or Facility. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-maintain",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-maintain",
  "version" : "1.0.0",
  "name" : "Maintain",
  "title" : "Maintain PLR entities.",
  "status" : "active",
  "kind" : "operation",
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "This operation is used to create and update the resources that represent a Provider or Facility.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "maintain",
  "resource" : ["Bundle"],
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
    "name" : "messageId",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "A unique message ID.",
    "type" : "string"
  },
  {
    "name" : "messageTime",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "When the message was sent.",
    "type" : "dateTime"
  },
  {
    "name" : "maintain",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "A [BC Practitioner Bundle](StructureDefinition-bc-practitioner-bundle.html), or [BC Organization Bundle](StructureDefinition-bc-organization-bundle.html) or a [BC Location Bundle](StructureDefinition-bc-location-bundle.html).",
    "type" : "Bundle"
  },
  {
    "name" : "messageId",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "A unique message ID.",
    "type" : "string"
  },
  {
    "name" : "messageTime",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "When the message was sent.",
    "type" : "dateTime"
  },
  {
    "name" : "requestMessageId",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The request message ID.",
    "type" : "string"
  },
  {
    "name" : "maintain",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "A [BC Practitioner Bundle](StructureDefinition-bc-practitioner-bundle.html), or [BC Organization Bundle](StructureDefinition-bc-organization-bundle.html) or a [BC Location Bundle](StructureDefinition-bc-location-bundle.html).",
    "type" : "Bundle"
  },
  {
    "name" : "outcome",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "The operation outcome - success, warning and error messages.",
    "type" : "OperationOutcome"
  }]
}

```
