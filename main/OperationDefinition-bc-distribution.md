# PLR entities sent out in a distribution. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PLR entities sent out in a distribution.**

## OperationDefinition: PLR entities sent out in a distribution. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-distribution | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:Distribution |

 
This operation is used to distribute the resources that represent a Provider or Facility. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "bc-distribution",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/OperationDefinition/bc-distribution",
  "version" : "1.0.0",
  "name" : "Distribution",
  "title" : "PLR entities sent out in a distribution.",
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
  "description" : "This operation is used to distribute the resources that represent a Provider or Facility.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "code" : "distribution",
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
    "name" : "distribution",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "A [BC Practitioner Bundle](StructureDefinition-bc-practitioner-bundle.html), or [BC Organization Bundle](StructureDefinition-bc-organization-bundle.html) or a [BC Location Bundle](StructureDefinition-bc-location-bundle.html) with the latest Provider/Facility data.",
    "type" : "Bundle"
  }]
}

```
