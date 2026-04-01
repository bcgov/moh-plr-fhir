# Example-OperationOutcome-Success - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OperationOutcome-Success**

## Example OperationOutcome: Example-OperationOutcome-Success

Profile: [BCOperationOutcome](StructureDefinition-bc-operation-outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Information | Business Rule Violation | Query successful |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Example-OperationOutcome-Success",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"]
  },
  "issue" : [{
    "severity" : "information",
    "code" : "business-rule",
    "details" : {
      "coding" : [{
        "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system",
        "code" : "PRS.PRP.MTN.UNK.0.0.7067"
      }],
      "text" : "Query successful"
    }
  }]
}

```
