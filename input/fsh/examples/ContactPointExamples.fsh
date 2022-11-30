Instance: Example-ContactPoint-Phone
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* value = "2501112234"
* extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC

Instance: Example-ContactPoint-Phone-Update
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* value = "2502222234"
* extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[endReason] = Example-ERC-Change

Instance: Example-ContactPoint-Phone-Response
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* value = "2503424325"
* extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[owner] = Example-OC-MOH

Instance: Example-ContactPoint-Phone-Response-PHSA
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #phone
* value = "2503424343"
* extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[owner] = Example-OC-PHSA

Instance: Example-ContactPoint-Email
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #email
* extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* value = "bob@email.com"

Instance: Example-ContactPoint-Email-Update
InstanceOf: BCContactPoint
Description: "Example of generic BC Contact Point for telephone."
Usage: #inline
* period.start = "2000-02-02"
* system = #email
* extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* extension[endReason] = Example-ERC-Change
* value = "bob@email.com"

