Instance: Example-ContactPoint-Phone
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* extension[areaCode].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-area"
* extension[areaCode].valueString = "250"
* extension[country].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-country"
* extension[country].valueString = "1"
* extension[local].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-local"
* extension[local].valueString = "1112234"
* extension[extension].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-extension"
* extension[extension].valueString = "3432"
* extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC

Instance: Example-ContactPoint-Phone-Response
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* extension[areaCode].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-area"
* extension[areaCode].valueString = "250"
* extension[country].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-country"
* extension[country].valueString = "1"
* extension[local].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-local"
* extension[local].valueString = "1112234"
* extension[extension].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-extension"
* extension[extension].valueString = "3432"
* extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[endReason] = Example-ERC-JustOC

Instance: Example-ContactPoint-Phone-Response-PHSA
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* extension[areaCode].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-area"
* extension[areaCode].valueString = "250"
* extension[country].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-country"
* extension[country].valueString = "1"
* extension[local].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-local"
* extension[local].valueString = "1112234"
* extension[extension].url = "http://hl7.org/fhir/StructureDefinition/contactpoint-extension"
* extension[extension].valueString = "3432"
* extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[endReason] = Example-ERC-JustOC-PHSA

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

