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
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[0].valueCodeableConcept.coding.code = #BC
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[1].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[1].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"
* extension[2] = Example-ERC-OC
