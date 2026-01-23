# Batch Maintain PLR entities. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Batch Maintain PLR entities.**

## OperationDefinition: Batch Maintain PLR entities. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-batch | *Version*:1.0.0 |
| Draft as of 2026-01-23 | *Computable Name*:Batch |

 
This operation is used to create and update multiple resources (Practitioner only for now) 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-batch",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-batch",
  "version" : "1.0.0",
  "name" : "Batch",
  "title" : "Batch Maintain PLR entities.",
  "status" : "draft",
  "kind" : "operation",
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
  "description" : "This operation is used to create and update multiple resources (Practitioner only for now)",
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
  "code" : "batch",
  "resource" : ["Bundle"],
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [
    {
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
      "name" : "batch",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "A [BC Batch Bundle](StructureDefinition-bc-batch-bundle.html)",
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
      "name" : "batch",
      "use" : "out",
      "min" : 0,
      "max" : "1",
      "documentation" : "A [BC Batch Bundle](StructureDefinition-bc-batch-response-bundle.html)",
      "type" : "Bundle"
    },
    {
      "name" : "outcome",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "The operation outcome - success, warning and error messages.",
      "type" : "OperationOutcome"
    }
  ]
}

```
