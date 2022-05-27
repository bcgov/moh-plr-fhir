Instance: Example-Practitioner
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner."

// demographics
* extension[0] = Example-Demographics-1
* gender = #male
* birthDate = "1934-01-02"
* extension[1] = Example-Demographics-2

// identifier
* identifier[0] = Example-Identifier-IPC-Ind
* identifier[1] = Example-Identifier-CPN
* identifier[2] = Example-Identifier-CPSID

// name
* name = Example-Name-Official

// license status
* extension[2] = Example-License-Status

// disciplinary action
* extension[3] = Example-DisciplinaryAction

// note
* extension[4] = Example-Note

// conditions
* extension[5] = Example-Condition

// telephone
* telecom = Example-ContactPoint-Phone

// address
* address = Example-Address-Valid

// credentials
* qualification.period.start = "2000-01-01"
* qualification.code = $SCPQual#BD
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
* extension[status].extension[statusCode].valueCodeableConcept = $RoleStatus#active
* extension[status].extension[statusReasonCode].valueCodeableConcept = $PLRStatusReason#PRAC
* extension[status].extension[statusClassCode].valueCodeableConcept = $PLRStatusClass#LIC
* extension[status].extension[endReasonCodeAndOwner].extension[custodianId].valueIdentifier.assigner.display = "RNA"
* extension[status].extension[period].valuePeriod.start = "2000-01-01"
* extension[status].extension[period].valuePeriod.end = "2020-01-01"
* extension[demographicsEndReason].extension[custodianId].valueIdentifier.assigner.display = "RNA"
* extension[demographicsEndReason].extension[endReasonCode].valueCodeableConcept = $PLRStatusReason#PRAC
* extension[deathDate].valueDateTime = "2000-02-01"
* extension[birthplace].valueAddress.state = "AL"
* extension[birthplace].valueAddress.country = "US"
* extension[disciplinaryAction].extension[identifier].valueIdentifier.system = $PLRDisciplinaryActionID
* extension[disciplinaryAction].extension[identifier].valueIdentifier.value = "DISCIPLINARY_ACTION_TEST1"
* extension[disciplinaryAction].extension[description].valueString = "DISCIPLINARYACTION_DESCRIPTIONTXT_1"
* extension[disciplinaryAction].extension[period].valuePeriod.start = "1950-11-20T00:00:00-07:00"
* extension[disciplinaryAction].extension[period].valuePeriod.end = "2020-01-01"
* extension[disciplinaryAction].extension[archiveDate].valueDateTime = "2020-01-01"
* extension[disciplinaryAction].extension[displayFlag].valueBoolean = true
* extension[confidentiality].extension[code].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* extension[confidentiality].extension[period].valuePeriod.start = "2000-01-01"
* extension[confidentiality].extension[period].valuePeriod.end = "2020-01-01"
* extension[note].extension[identifier].valueIdentifier.system = $PLRNoteID
* extension[note].extension[identifier].valueIdentifier.value = "noteID1"
* extension[note].extension[text].valueString = "Note text sample"
* extension[note].extension[period].valuePeriod.start = "2000-01-01"
* extension[note].extension[period].valuePeriod.end = "2020-01-01"
* extension[condition].extension[identifier].valueIdentifier.system = $PLRConditionType
* extension[condition].extension[identifier].valueIdentifier.value = "23"
* extension[condition].extension[period].valuePeriod.start = "2000-01-01"
* extension[condition].extension[period].valuePeriod.end = "2020-01-01"
* extension[condition].extension[restriction].valueBoolean = true
* extension[condition].extension[restrictionText].valueString = "CONDITION_RESTRICTION_EXPLANATION TEXT"
* extension[condition].extension[code].valueCodeableConcept = $PLRConditionType#LOC
* extension[relationship].extension[period].valuePeriod.start = "2000-01-01"
* extension[relationship].extension[period].valuePeriod.end = "2020-01-01"
* extension[relationship].extension[type].valueCodeableConcept = $PLRRelationshipType#LOC
* extension[relationship].extension[practitioner].valueReference = Reference(Example-AddPractitioner-RelatedPractitioner)
* extension[demographicsPeriod].valuePeriod.start = "2000-01-01"
* extension[demographicsPeriod].valuePeriod.end = "2020-01-01"
* contained[QualificationOrganization] = Example-Qualification-Organization
* contained[QualificationOrganization].id = "qualificationOrganization"
* identifier = Example-Identifier-CPSID
* active = true
* name.family = "KELASEY"
* name.given = "SONYA"
* name.given[1] = "NAME PRSNSECONDGIVENNAMETXT"
* name.given[2] = "NAME PRSNTHIRDGIVENNAMETXT"
* name.prefix = "PRSNPREFIX"
* name.suffix = "PRSNSUFFIX"
* name.period.start = "2000-01-01"
* name.period.end = "2020-01-01"
* name.use = #official

* telecom[0].system = #phone
* telecom[0].extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #HC
* telecom[0].value = "2507654333"
* telecom[0].period.start = "2000-01-01"
* telecom[0].period.end = "2020-01-01"

* telecom[1].system = #email
* telecom[1].value = "hey@day.com"
* telecom[1].period.start = "2000-01-01"
* telecom[1].period.end = "2020-01-01"
* telecom[1].extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* address = Example-Address-Valid
* gender = #female
* birthDate = "1951-11-12"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* qualification.code = $SCPQual#BD
* qualification.code.text = "CREDENTIAL_CREDENTIALDESIGNATIONTXT"
* qualification.period.start = "2000-01-01"
* qualification.period.end = "2020-01-01"
* qualification.issuer.reference = "#qualificationOrganization"
* qualification.extension[qualificationExtension].extension[designation].valueString = "designation"
* qualification.extension[qualificationExtension].extension[equivalencyFlag].valueBoolean = true
* qualification.extension[qualificationExtension].extension[registrationNumber].valueString = "registration number"
* qualification.extension[qualificationExtension].extension[issuedDate].valueDateTime = "2000-01-01"
* communication.coding = $PLRLanguage#EN
* communication.extension[period].valuePeriod.start = "2000-01-01"
* communication.extension[languageSource].valueString = "Language Source"


Instance: Example-AddPractitioner-RelatedPractitioner
InstanceOf: BCPractitioner
Description: "Example of a practitioner that has a relationship to the example created practitioner."
* extension[demographicsPeriod].valuePeriod.start = "2000-01-01"
* identifier = Example-Identifier-RNID
* name.text = "23"

