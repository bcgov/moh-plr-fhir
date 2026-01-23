# Example-OperationOutcome-MaintainSuccess - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-OperationOutcome-MaintainSuccess**

## Example OperationOutcome: Example-OperationOutcome-MaintainSuccess

Profile: [BCOperationOutcome](StructureDefinition-bc-operation-outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** |
| * | Information | Business Rule Violation | The provider transaction was processed. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Example-OperationOutcome-MaintainSuccess",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-operation-outcome"
    ]
  },
  "issue" : [
    {
      "severity" : "information",
      "code" : "business-rule",
      "details" : {
        "coding" : [
          {
            "system" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-error-code-system",
            "code" : "PRS.PRP.MTN.UNK.0.0.0000"
          }
        ],
        "text" : "The provider transaction was processed."
      }
    }
  ]
}

```
