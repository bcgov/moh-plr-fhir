Instance: Example-IndProvider-to-IndProvider-Relationship
InstanceOf: Extension
Description: "Example of practitioner to practitioner relationship."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-relationship-extension"
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[0].valuePeriod.end = "2020-01-01"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* extension[1].valueCodeableConcept = $PLRRelationshipType#LOC
* extension[2].url = "practitioner"
* extension[2].valueReference = Reference(Example-AddPractitioner-RelatedPractitioner)

Instance: Example-Confidenciality-False
InstanceOf: Extension
Description: "Example of false confidenciality."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-confidentiality-extension"
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[0].valuePeriod.end = "2020-01-01"
* extension[1].url = "code"
* extension[1].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* extension[1].valueCodeableConcept.coding.code = #R 

Instance: Example-Specialty
InstanceOf: CodeableConcept
Description: "AMD53 specialty."
Usage: #inline
* coding.code = #AMD53
* coding.system = $PracSpecialty
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[0].valuePeriod.end = "2020-01-01"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-specialty-source-extension"
* extension[1].valueString = "Expertise source"

Instance: Example-Specialty-Update
InstanceOf: CodeableConcept
Description: "AMD53 specialty."
Usage: #inline
* coding.code = #AMD53
* coding.system = $PracSpecialty
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[0].valuePeriod.end = "2020-01-01"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-specialty-source-extension"
* extension[1].valueString = "Expertise source"
* extension[2] = Example-ERC-Change

Instance: Example-Demographics-1
InstanceOf: Extension
Description: "Example of Demographics part 1."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* valuePeriod.start = "2012-12-07"

Instance: Example-Demographics-2
InstanceOf: Extension
Description: "Example of Demographics part 2."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-birthplace-extension"
* valueAddress.city = "Ottawa"
* valueAddress.country = "CA"

Instance: Example-License-Status
InstanceOf: Extension
Description: "Example license status."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-license-status-extension"
* extension[0].url = "statusCode"
* extension[0].valueCodeableConcept.coding.system = $RoleStatus
* extension[0].valueCodeableConcept.coding.code = #suspended
* extension[1].url = "statusReasonCode"
* extension[1].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[1].valueCodeableConcept.coding.code = #LTP
* extension[2].url = "period"
* extension[2].valuePeriod.start = "2022-06-24"

Instance: Example-License-Status-Update
InstanceOf: Extension
Description: "Example license status update."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-license-status-extension"
* extension[0].url = "statusCode"
* extension[0].valueCodeableConcept.coding.system = $RoleStatus
* extension[0].valueCodeableConcept.coding.code = #suspended
* extension[1].url = "statusReasonCode"
* extension[1].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[1].valueCodeableConcept.coding.code = #LTP
* extension[2].url = "period"
* extension[2].valuePeriod.start = "2022-06-24"
* extension[3] = Example-ERC-Change


Instance: Example-ERC-OC
InstanceOf: Extension
Description: "General end reason and owner code example."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-end-reason-extension"
* extension[0].url = "endReasonCode"
* extension[0].valueCodeableConcept.coding.system = $PLREndReason
* extension[0].valueCodeableConcept.coding.code = #CHG
* extension[1].url = "custodianId"
* extension[1].valueIdentifier.assigner.display = "CPS"

Instance: Example-ERC-Change
InstanceOf: Extension
Description: "General end reason and owner code example."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-end-reason-extension"
* extension[0].url = "endReasonCode"
* extension[0].valueCodeableConcept.coding.system = $PLREndReason
* extension[0].valueCodeableConcept.coding.code = #CHG

Instance: Example-DisciplinaryAction
InstanceOf: Extension
Description: "Example disciplinary action."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "DA-1"
* extension[1].url = "description"
* extension[1].valueString = "Description"
* extension[2].url = "archiveDate"
* extension[2].valueDateTime = "2000-01-01"
* extension[3].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[3].valuePeriod.start = "1998-01-02"
* extension[4].url = "displayFlag"
* extension[4].valueBoolean = false

Instance: Example-DisciplinaryAction-Update
InstanceOf: Extension
Description: "Example disciplinary action."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "DA-1"
* extension[1].url = "description"
* extension[1].valueString = "Description"
* extension[2].url = "archiveDate"
* extension[2].valueDateTime = "2000-01-01"
* extension[3].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[3].valuePeriod.start = "1998-01-02"
* extension[4].url = "displayFlag"
* extension[4].valueBoolean = false
* extension[5] = Example-ERC-Change

Instance: Example-Note
InstanceOf: Extension
Description: "Example note."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-note-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "Note-2"
* extension[1].url = "text"
* extension[1].valueString = "Note text"
* extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "1998-01-02"
* extension[3] = Example-ERC-OC

Instance: Example-Note-Update
InstanceOf: Extension
Description: "Example note."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-note-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "Note-2"
* extension[1].url = "text"
* extension[1].valueString = "Note text"
* extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "1998-01-02"
* extension[3] = Example-ERC-Change

Instance: Example-Condition
InstanceOf: Extension
Description: "Example condition."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-condition-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "Condition-1"
* extension[1].url = "restriction"
* extension[1].valueBoolean = false
* extension[2].url = "restrictionText"
* extension[2].valueString = "Restriction text"
* extension[3].url = "code"
* extension[3].valueCodeableConcept.coding.system = $PLRConditionType
* extension[3].valueCodeableConcept.coding.code = #EXP
* extension[4].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[4].valuePeriod.start = "1998-01-02"

Instance: Example-Condition-Update
InstanceOf: Extension
Description: "Example condition."
Usage: #inline
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-condition-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "Condition-1"
* extension[1].url = "restriction"
* extension[1].valueBoolean = false
* extension[2].url = "restrictionText"
* extension[2].valueString = "Restriction text"
* extension[3].url = "code"
* extension[3].valueCodeableConcept.coding.system = $PLRConditionType
* extension[3].valueCodeableConcept.coding.code = #EXP
* extension[4].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[4].valuePeriod.start = "1998-01-02"
* extension[5] = Example-ERC-Change

Instance: Example-Language
InstanceOf: CodeableConcept
Description: "Example language."
Usage: #inline
* coding = $PLRLanguage#EN
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-specialty-source-extension"
* extension[1].valueString = "Language Source"

Instance: Example-Language-Update
InstanceOf: CodeableConcept
Description: "Example language."
Usage: #inline
* coding = $PLRLanguage#EN
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-specialty-source-extension"
* extension[1].valueString = "Language Source"
* extension[2] = Example-ERC-Change

