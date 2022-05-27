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
* extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[validationStatus].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[validationStatus].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[validationStatus].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"
