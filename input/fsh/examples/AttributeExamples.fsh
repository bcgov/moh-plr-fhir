Instance: Example-IndProvider-to-IndProvider-Relationship
InstanceOf: Extension
Description: "Example of practitioner to practitioner relationship."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension"
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[0].valuePeriod.end = "2020-01-01"
* extension[1].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[1].valueCodeableConcept = $PLRRelationshipType#LOC
* extension[2].url = "practitioner"
* extension[2].valueReference = Reference(Example-AddPractitioner-RelatedPractitioner)
* extension[3].url = "logicalId"
* extension[3].valueString = "123456"


Instance: Example-Confidenciality-False
InstanceOf: Extension
Description: "Example of false confidenciality."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[=].valuePeriod.end = "2020-01-01"
* extension[+].url = "code"
* extension[=].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* extension[=].valueCodeableConcept.coding.code = #R 

Instance: Example-Confidenciality-False-Update
InstanceOf: Extension
Description: "Example of false confidenciality."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[=].valuePeriod.end = "2020-01-01"
* extension[+].url = "code"
* extension[=].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* extension[=].valueCodeableConcept.coding.code = #R 
* extension[+] = Example-ERC-Cease

Instance: Example-Confidenciality-False-Response
InstanceOf: Extension
Description: "Example of false confidenciality."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-confidentiality-extension"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[=].valuePeriod.end = "2020-01-01"
* extension[+].url = "code"
* extension[=].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* extension[=].valueCodeableConcept.coding.code = #R 
* extension[+] = Example-OC-MOH

Instance: Example-Specialty
InstanceOf: CodeableConcept
Description: "AMD53 specialty."
Usage: #inline
* coding.code = #AMD53
* coding.system = $SCPQual
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[=].valuePeriod.end = "2020-01-01"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension"
* extension[=].valueString = "Expertise source"

Instance: Example-Specialty-Response
InstanceOf: CodeableConcept
Description: "AMD53 specialty."
Usage: #inline
* coding.code = #AMD53
* coding.system = $SCPQual
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[=].valuePeriod.end = "2020-01-01"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension"
* extension[=].valueString = "Expertise source"
* extension[+] = Example-OC-MOH

Instance: Example-Specialty-Update
InstanceOf: CodeableConcept
Description: "AMD53 specialty."
Usage: #inline
* coding.code = #AMD53
* coding.system = $SCPQual
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[=].valuePeriod.end = "2020-01-01"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-specialty-source-extension"
* extension[=].valueString = "Expertise source"
* extension[+] = Example-ERC-Change

Instance: Example-Demographics-1
InstanceOf: Extension
Description: "Example of Demographics part 1."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* valuePeriod.start = "2012-12-07"

Instance: Example-Demographics-2
InstanceOf: Extension
Description: "Example of Demographics part 2."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-birthplace-extension"
* valueAddress.city = "Ottawa"
* valueAddress.state = "ON"
* valueAddress.country = "CA"

Instance: Example-License-Status
InstanceOf: Extension
Description: "Example license status."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
* extension[+].url = "statusCode"
* extension[=].valueCodeableConcept.coding.system = $PLRLicenseStatus
* extension[=].valueCodeableConcept.coding.code = #SUSPENDED
* extension[+].url = "statusReasonCode"
* extension[=].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[=].valueCodeableConcept.coding.code = #LTP
* extension[+].url = "statusClassCode"
* extension[=].valueCodeableConcept.coding.system = $PLRStatusClass
* extension[=].valueCodeableConcept.coding.code = #LIC
* extension[+].url = "period"
* extension[=].valuePeriod.start = "2022-06-24"

Instance: Example-License-Status-Response
InstanceOf: Extension
Description: "Example license status."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
* extension[+].url = "statusCode"
* extension[=].valueCodeableConcept.coding.system = $PLRLicenseStatus
* extension[=].valueCodeableConcept.coding.code = #SUSPENDED
* extension[+].url = "statusReasonCode"
* extension[=].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[=].valueCodeableConcept.coding.code = #LTP
* extension[+].url = "statusClassCode"
* extension[=].valueCodeableConcept.coding.system = $PLRStatusClass
* extension[=].valueCodeableConcept.coding.code = #LIC
* extension[+].url = "period"
* extension[=].valuePeriod.start = "2022-06-24"
* extension[+] = Example-OC-MOH

Instance: Example-License-Status-Update
InstanceOf: Extension
Description: "Example license status update."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
* extension[+].url = "statusCode"
* extension[=].valueCodeableConcept.coding.system = $PLRLicenseStatus
* extension[=].valueCodeableConcept.coding.code = #INACTIVE
* extension[+].url = "statusReasonCode"
* extension[=].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[=].valueCodeableConcept.coding.code = #LTP
* extension[+].url = "statusClassCode"
* extension[=].valueCodeableConcept.coding.system = $PLRStatusClass
* extension[=].valueCodeableConcept.coding.code = #LIC
* extension[+].url = "period"
* extension[=].valuePeriod.start = "2022-06-24"
* extension[+] = Example-ERC-Change

Instance: Example-OC-CPS
InstanceOf: Extension
Description: "General owner code example."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"
* valueIdentifier.assigner.display = "CPS"

Instance: Example-OC-MOH
InstanceOf: Extension
Description: "General owner code example."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"
* valueIdentifier.assigner.display = "MOH"

Instance: Example-OC-PHSA
InstanceOf: Extension
Description: "General owner code example."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"
* valueIdentifier.assigner.display = "PHSA"

Instance: Example-ERC-Change
InstanceOf: Extension
Description: "General end reason example."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension"
* valueCodeableConcept.coding.system = $PLREndReason
* valueCodeableConcept.coding.code = #CHG

Instance: Example-ERC-Cease
InstanceOf: Extension
Description: "General end reason example."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension"
* valueCodeableConcept.coding.system = $PLREndReason
* valueCodeableConcept.coding.code = #CEASE

Instance: Example-DisciplinaryAction
InstanceOf: Extension
Description: "Example disciplinary action."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "DA-1"
* extension[+].url = "description"
* extension[=].valueString = "Description"
* extension[+].url = "archiveDate"
* extension[=].valueDateTime = "2000-01-01"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"
* extension[+].url = "displayFlag"
* extension[=].valueBoolean = false

Instance: Example-DisciplinaryAction-Response
InstanceOf: Extension
Description: "Example disciplinary action."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "DA-1"
* extension[+].url = "description"
* extension[=].valueString = "Description"
* extension[+].url = "archiveDate"
* extension[=].valueDateTime = "2000-01-01"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"
* extension[+].url = "displayFlag"
* extension[=].valueBoolean = false
* extension[+] = Example-OC-MOH

Instance: Example-DisciplinaryAction-Update
InstanceOf: Extension
Description: "Example disciplinary action."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "DA-1"
* extension[1].url = "description"
* extension[1].valueString = "Description"
* extension[2].url = "archiveDate"
* extension[2].valueDateTime = "2000-01-01"
* extension[3].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[3].valuePeriod.start = "1998-01-02"
* extension[4].url = "displayFlag"
* extension[4].valueBoolean = false
* extension[5] = Example-ERC-Change

Instance: Example-Note
InstanceOf: Extension
Description: "Example note."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "Note-2"
* extension[0].valueIdentifier.system = $PLRNoteID
* extension[1].url = "text"
* extension[1].valueString = "Note text"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "1998-01-02"

Instance: Example-Note-Response
InstanceOf: Extension
Description: "Example note."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "Note-2"
* extension[=].valueIdentifier.system = $PLRNoteID
* extension[+].url = "text"
* extension[=].valueString = "Note text"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"
* extension[+] = Example-OC-MOH

Instance: Example-Note-Response-PHSA
InstanceOf: Extension
Description: "Example note."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "Note-2"
* extension[=].valueIdentifier.system = $PLRNoteID
* extension[+].url = "text"
* extension[=].valueString = "Note text"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"
* extension[+] = Example-OC-PHSA

Instance: Example-Note-Update
InstanceOf: Extension
Description: "Example note."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-note-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "Note-3"
* extension[0].valueIdentifier.system = $PLRNoteID
* extension[1].url = "text"
* extension[1].valueString = "Note text"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "1998-01-02"
* extension[3] = Example-ERC-Change

Instance: Example-Condition
InstanceOf: Extension
Description: "Example condition."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "Condition-1"
* extension[=].valueIdentifier.system = $PLRConditionID
* extension[+].url = "restriction"
* extension[=].valueBoolean = false
* extension[+].url = "restrictionText"
* extension[=].valueString = "Restriction text"
* extension[+].url = "code"
* extension[=].valueCodeableConcept.coding.system = $PLRConditionType
* extension[=].valueCodeableConcept.coding.code = #EXP
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"

Instance: Example-Condition-Response
InstanceOf: Extension
Description: "Example condition."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "Condition-1"
* extension[=].valueIdentifier.system = $PLRConditionID
* extension[+].url = "restriction"
* extension[=].valueBoolean = false
* extension[+].url = "restrictionText"
* extension[=].valueString = "Restriction text"
* extension[+].url = "code"
* extension[=].valueCodeableConcept.coding.system = $PLRConditionType
* extension[=].valueCodeableConcept.coding.code = #EXP
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"
* extension[+] = Example-OC-MOH

Instance: Example-Condition-Update
InstanceOf: Extension
Description: "Example condition."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-condition-extension"
* extension[+].url = "identifier"
* extension[=].valueIdentifier.value = "Condition-2"
* extension[=].valueIdentifier.system = $PLRConditionID
* extension[+].url = "restriction"
* extension[=].valueBoolean = false
* extension[+].url = "restrictionText"
* extension[=].valueString = "Restriction text"
* extension[+].url = "code"
* extension[=].valueCodeableConcept.coding.system = $PLRConditionType
* extension[=].valueCodeableConcept.coding.code = #EXP
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "1998-01-02"
* extension[+] = Example-ERC-Change

Instance: Example-Language
InstanceOf: CodeableConcept
Description: "Example language."
Usage: #inline
* coding = $PLRLanguage#B01
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"

Instance: Example-Language-French
InstanceOf: CodeableConcept
Description: "Example language."
Usage: #inline
* coding = $PLRLanguage#F16
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"

Instance: Example-Language-Response
InstanceOf: CodeableConcept
Description: "Example language."
Usage: #inline
* coding = $PLRLanguage#B01
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2000-01-01"
* extension[+] = Example-OC-MOH

Instance: Example-Language-Update
InstanceOf: CodeableConcept
Description: "Example language."
Usage: #inline
* coding = $PLRLanguage#B01
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2000-01-01"
* extension[+] = Example-ERC-Change

