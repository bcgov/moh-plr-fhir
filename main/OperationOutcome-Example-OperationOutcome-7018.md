# Example-OperationOutcome-7018 - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OperationOutcome-7018**

## Example OperationOutcome: Example-OperationOutcome-7018

Profile: [BCOperationOutcome](StructureDefinition-bc-operation-outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Business Rule Violation | Only one wildcard (*) is allowed in a field. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Example-OperationOutcome-7018",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "business-rule",
    "details" : {
      "coding" : [{
        "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system",
        "code" : "GRS.DPS.UNK.UNK.0.0.7018"
      }],
      "text" : "Only one wildcard (*) is allowed in a field."
    }
  }]
}

```
