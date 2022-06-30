Instance: Example-Practitioner
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner."

// demographics
* extension[0] = Example-Demographics-1
* gender = #male
* birthDate = "1934-01-02"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* extension[1] = Example-Demographics-2

* identifier[0] = Example-Identifier-IPC-Ind-1

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
* qualification.code.coding.system = "https://fhir.infoway-inforoute.ca/CodeSystem/scpqual"
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

Instance: Example-AddPractitioner-Practitioner
InstanceOf: BCPractitioner
Description: "Example of a BC practitioner that is being created."
// identifier
* identifier[0] = Example-Identifier-IPC-Ind-1
* identifier[1] = Example-Identifier-CPN
* identifier[2] = Example-Identifier-CPSID
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
* extension[5].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-deathdate-extension"
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
* url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-relationship-extension"
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2022-06-30"
* extension[1].url = "practitioner"
* extension[1].valueReference.identifier = Example-Identifier-IPC-Ind-2
* extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* extension[2].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[2].valueCodeableConcept.coding.code = #WORKSAT 


Instance: Example-Practitioner-UpdateLicense
InstanceOf: BCPractitioner
Description: "Example Practitioner resource for updating License Status."

* identifier = Example-Identifier-IPC-Ind-1
* extension = Example-License-Status-Update
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason" 
* name.extension.valueCode = #not-applicable

