# Example-OperationOutcome-7047 - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OperationOutcome-7047**

## Example OperationOutcome: Example-OperationOutcome-7047

Profile: [BCOperationOutcome](StructureDefinition-bc-operation-outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Warning | Business Rule Violation | No provider records found for the input parameters. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Example-OperationOutcome-7047",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
    ]
  },
  "issue" : [
    {
      "severity" : "warning",
      "code" : "business-rule",
      "details" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system",
            "code" : "GRS.DPS.UNK.UNK.0.0.7047"
          }
        ],
        "text" : "No provider records found for the input parameters."
      }
    }
  ]
}

```
