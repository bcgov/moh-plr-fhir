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
//* extension[commPurposeExtension].valueCodeableConcept = $PLRCommPurpose#BC
//* extension[validationStatus].valueCodeableConcept = $PLRAddressValStatus#V
//* extension[endReason] = Example-ERC-OC
//* period.start = "2000-01-01"
* extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #BC
* extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[=].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"

Instance: Example-Address-Valid-Response
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
* extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #BC
* extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-address-validation-status-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRAddressValStatus
* extension[=].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"
* extension[+] = Example-ERC-JustOC-PHSA
