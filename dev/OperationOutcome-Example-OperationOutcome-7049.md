# Example-OperationOutcome-7049 - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OperationOutcome-7049**

## Example OperationOutcome: Example-OperationOutcome-7049

Profile: [BCOperationOutcome](StructureDefinition-bc-operation-outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Error | Business Rule Violation | Some results were removed under data permission rules. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Example-OperationOutcome-7049",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
    ]
  },
  "issue" : [
    {
      "severity" : "error",
      "code" : "business-rule",
      "details" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system",
            "code" : "GRS.DPS.UNK.UNK.0.0.7049"
          }
        ],
        "text" : "Some results were removed under data permission rules."
      }
    }
  ]
}

```
