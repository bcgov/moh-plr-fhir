Instance: Example-Practitioner
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner."
// demographics
* extension[0] = Example-Demographics-1
* gender = #male
* birthDate = "1934-01-02"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* extension[1] = Example-Demographics-2
* id = "IPC.00147422.BC.PRS"
* identifier[0] = Example-Identifier-IPC-Ind-147422

* name = Example-Name-Official
* extension[2] = Example-License-Status
* extension[3] = Example-DisciplinaryAction
* extension[4] = Example-Note
* extension[5] = Example-Condition
* extension[6] = Example-Confidenciality-False
* extension[7] = Example-AddPractitioner-RelatedPractitioner
* telecom = Example-ContactPoint-Phone
* address = Example-Address-Valid

// credentials
* qualification.period.start = "2000-01-01"
* qualification.code.coding.system = $SCPQual
* qualification.code.coding.code = #BD
* qualification.extension[qualificationExtension].extension[designation].valueString = "Designation"
* qualification.extension[qualificationExtension].extension[equivalencyFlag].valueBoolean = false
* qualification.extension[qualificationExtension].extension[registrationNumber].valueString = "Registration No."
* qualification.extension[qualificationExtension].extension[issuedDate].valueDateTime = "2000-02-03"
* qualification.issuer.reference = "#grantingInstitution"	
* contained[QualificationOrganization] = Example-Credential-Granting-Institution
* contained[QualificationOrganization].id = "grantingInstitution"

// language
* communication = Example-Language

Instance: Example-Practitioner-Response
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner response."
// demographics
* extension[+] = Example-Demographics-1
* extension[+] = Example-OC-MOH
* gender = #male
* birthDate = "1934-01-02"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* extension[+] = Example-Demographics-2

* id = "IPC.00147622.BC.PRS"
* identifier[+] = Example-Identifier-IPC-Ind-Response-147622
* identifier[+] = Example-Identifier-CPN-Response-147422
* identifier[+] = Example-Identifier-CPSID-Response

* name = Example-Name-Official-Response
* extension[+] = Example-License-Status-Response
* extension[+] = Example-DisciplinaryAction-Response
* extension[+] = Example-Note-Response
* extension[+] = Example-Condition-Response
* extension[+] = Example-Confidenciality-False-Response
* extension[+] = Example-AddPractitioner-RelatedPractitioner-Response
* telecom = Example-ContactPoint-Phone-Response
* address = Example-Address-Valid-Response

// credentials
* qualification.period.start = "2000-01-01"
* qualification.code.coding.system = $SCPQual
* qualification.code.coding.code = #BD
* qualification.extension[qualificationExtension].extension[designation].valueString = "Designation"
* qualification.extension[qualificationExtension].extension[equivalencyFlag].valueBoolean = false
* qualification.extension[qualificationExtension].extension[registrationNumber].valueString = "Registration No."
* qualification.extension[qualificationExtension].extension[issuedDate].valueDateTime = "2000-02-03"
* qualification.issuer.reference = "#grantingInstitution"	
* contained[QualificationOrganization] = Example-Credential-Granting-Institution
* contained[QualificationOrganization].id = "grantingInstitution"
* qualification.extension[1] = Example-OC-MOH

// language
* communication = Example-Language-Response

Instance: Example-AddPractitioner-Practitioner
InstanceOf: BCPractitioner
Description: "Example of a BC practitioner that is being created."
// identifier
* identifier[0] = Example-Identifier-CPSID
* active = true
* name = Example-Name-Official
* telecom = Example-ContactPoint-Phone
* telecom = Example-ContactPoint-Email
* address = Example-Address-Valid
* communication = Example-Language
* extension[0] = Example-License-Status
* extension[1] = Example-DisciplinaryAction
* extension[2] = Example-Note
* extension[3] = Example-Condition
* extension[4] = Example-Confidenciality-False
* telecom = Example-ContactPoint-Phone
* address = Example-Address-Valid

// demographics
* extension[5].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-deathdate-extension"
* extension[5].valueDateTime = "2000-02-01"
* gender = #female
* extension[6] = Example-Demographics-1
* birthDate = "1934-01-02"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* extension[7] = Example-Demographics-2

// credentials
* contained[QualificationOrganization] = Example-Qualification-Organization
* contained[QualificationOrganization].id = "qualificationOrganization"
* qualification.code = $SCPQual#BD 
* qualification.code.text = "CREDENTIAL_CREDENTIALDESIGNATIONTXT"
* qualification.period.start = "2000-01-01"
* qualification.period.end = "2020-01-01"
* qualification.issuer.reference = "#qualificationOrganization"
* qualification.extension[qualificationExtension].extension[designation].valueString = "designation"
* qualification.extension[qualificationExtension].extension[equivalencyFlag].valueBoolean = true
* qualification.extension[qualificationExtension].extension[registrationNumber].valueString = "registration number"
* qualification.extension[qualificationExtension].extension[issuedDate].valueDateTime = "2000-01-01"


Instance: Example-AddPractitioner-RelatedPractitioner
InstanceOf: Extension
Description: "Example of a practitioner that has a relationship to the example created practitioner."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2022-06-30"
* extension[+].url = "targetPractitioner"
* extension[=].valueReference.identifier = Example-Identifier-IPC-Ind-763483
* extension[+].url = "relationshipType"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT 
* extension[+].url = "logicalId"
* extension[=].valueString = "987654"

Instance: Example-AddPractitioner-RelatedPractitioner-Response
InstanceOf: Extension
Description: "Example of a practitioner that has a relationship to the example created practitioner."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-relationship-extension"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2022-06-30"
* extension[+].url = "targetPractitioner"
* extension[=].valueReference.identifier = Example-Identifier-IPC-Ind-763483
* extension[+].url = "relationshipType"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT 
* extension[+] = Example-OC-MOH
* extension[+].url = "logicalId"
* extension[=].valueString = "999999"

Instance: Example-Practitioner-UpdateLicense
InstanceOf: BCPractitioner
Description: "Example Practitioner resource for updating License Status."
* id = "IPC.00763481.BC.PRS"
* identifier = Example-Identifier-IPC-Ind-763481
* extension = Example-License-Status-Update
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason" 
* name.family.extension.valueCode = #not-applicable

Instance: Example-Practitioner-Update
InstanceOf: BCPractitioner
Description: "Example Practitioner resource for updating License Status."
* id = "IPC.00147433.BC.PRS"
* identifier = Example-Identifier-IPC-Ind-147433
* address[+] = Example-Address-Update
* name[+] = Example-Name-Usual-Change
* telecom[+] = Example-ContactPoint-Phone-Update
* telecom[+] = Example-ContactPoint-Email-Update
