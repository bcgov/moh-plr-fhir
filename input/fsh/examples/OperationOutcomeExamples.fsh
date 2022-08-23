Instance: Example-OperationOutcome-7049
InstanceOf: BCOperationOutcome
Description: "OperationOutcome example for Individual Provider search - too many results."
* issue[0].severity = #error
* issue[0].code = #business-rule
* issue[0].details.coding.system = $PLRError
* issue[0].details.coding.code = #GRS.DPS.UNK.UNK.0.0.7049
* issue[0].details.text = "Some results were removed under data permission rules."

Instance: Example-OperationOutcome-7047
InstanceOf: BCOperationOutcome
Description: "OperationOutcome example for Individual Provider search - no provider records found."
* issue[0].severity = #warning
* issue[0].code = #business-rule
* issue[0].details.coding.system = $PLRError
* issue[0].details.coding.code = #GRS.DPS.UNK.UNK.0.0.7047
* issue[0].details.text = "No provider records found for the input parameters."

Instance: Example-OperationOutcome-7018
InstanceOf: BCOperationOutcome
Description: "OperationOutcome example for Individual Provider search - wildcard error."
* issue[0].severity = #error
* issue[0].code = #business-rule
* issue[0].details.coding.system = $PLRError
* issue[0].details.coding.code = #GRS.DPS.UNK.UNK.0.0.7018
* issue[0].details.text = "Only one wildcard (*) is allowed in a field."

Instance: Example-OperationOutcome-MaintainSuccess
InstanceOf: BCOperationOutcome
Description: "OperationOutcome example of a success message."
* issue[0].severity = #information
* issue[0].code = #business-rule
* issue[0].details.coding.system = $PLRError
* issue[0].details.coding.code = #PRS.PRP.MTN.UNK.0.0.0000
* issue[0].details.text = "The provider transaction was processed."
