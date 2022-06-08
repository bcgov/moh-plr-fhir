Instance: Example-ContactPoint-Phone
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* extension[areaCode].valueString = "250"
* extension[local].valueString = "111-2234"
* extension[extension].valueString = "3432"
* extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC

Instance: Example-ContactPoint-Email
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #email
* extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* value = "bob@email.com"

