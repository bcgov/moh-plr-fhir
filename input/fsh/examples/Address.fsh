Instance: Example-Address-Valid
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
* type = #postal
* line[0] = "19 ST"
* line[1] = "ADDRESS ADDRESSLINE2TXT"
* line[2] = "ADDRESS ADDRESSLINE3TXT"
* city = "VICTORIA"
* postalCode = "V6P7B8"
* state = "BC"
* country = "CA"
* extension[commPurposeExtension].valueCodeableConcept = $PLRCommPurpose#BC
* extension[validationStatus].valueCodeableConcept = $PLRAddressValStatus#V
* extension[endReason] = Example-ERC-OC
* period.start = "2000-01-01"
