Instance: Example-Practitioner
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner."

// demographics
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2012-12-07"
* gender = #male
* birthDate = "1934-01-02"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-birthplace-extension"
* extension[1].valueAddress.city = "Ottawa"
* extension[1].valueAddress.country = "CA"

// identifier
* identifier[0].system = "urn:oid:2.16.840.1.113883.3.40.2.8"
* identifier[0].value = "23423234"
* identifier[0].period.start = "2022-02-07"
* identifier[1].system = "urn:oid:2.16.840.1.113883.3.40.2.3"
* identifier[1].value = "23423234"
* identifier[1].period.start = "2022-02-07"
* identifier[2].system = "urn:oid:2.16.840.1.113883.3.40.2.4"
* identifier[2].value = "89745"
* identifier[2].period.start = "2022-02-07"

// name
* name.family = "FamilyName"
* name.given = "GivenName"
* name.period.start = "2012-12-07"
* name.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-name-use-extension"
* name.extension[0].valueCode = #official

// license status
* extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-license-status-extension"
* extension[2].extension[0].url = "statusCode"
* extension[2].extension[0].valueCodeableConcept.coding.system = "http://hlth.gov.bc.ca/fhir/provider/bc-license-status"
* extension[2].extension[0].valueCodeableConcept.coding.code = #ACTIVE
* extension[2].extension[1].url = "period"
* extension[2].extension[1].valuePeriod.start = "2022-02-07"
* extension[2].extension[1].valuePeriod.end = "2023-02-07"
* extension[2].extension[2].url = "statusReasonCode"
* extension[2].extension[2].valueCodeableConcept.coding.system = "http://hlth.gov.bc.ca/fhir/provider/bc-license-status-reason"
* extension[2].extension[2].valueCodeableConcept.coding.code = #GS

// disciplinary action
* extension[3].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-disciplinary-action-extension"
* extension[3].extension[0].url = "identifier"
* extension[3].extension[0].valueIdentifier.value = "DA-1"
* extension[3].extension[1].url = "description"
* extension[3].extension[1].valueString = "Description"
* extension[3].extension[2].url = "archiveDate"
* extension[3].extension[2].valueDateTime = "2000-01-01"
* extension[3].extension[3].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[3].extension[3].valuePeriod.start = "1998-01-02"
* extension[3].extension[4].url = "displayFlag"
* extension[3].extension[4].valueBoolean = false

// note
* extension[4].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-note-extension"
* extension[4].extension[0].url = "identifier"
* extension[4].extension[0].valueIdentifier.value = "Note-2"
* extension[4].extension[1].url = "text"
* extension[4].extension[1].valueString = "Note text"
* extension[4].extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[4].extension[2].valuePeriod.start = "1998-01-02"

// conditions
* extension[5].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-practitioner-condition-extension"
* extension[5].extension[0].url = "identifier"
* extension[5].extension[0].valueIdentifier.value = "Condition-1"
* extension[5].extension[1].url = "restriction"
* extension[5].extension[1].valueBoolean = false
* extension[5].extension[2].url = "restrictionText"
* extension[5].extension[2].valueString = "Restriction text"
* extension[5].extension[3].url = "code"
* extension[5].extension[3].valueCodeableConcept.coding.system = "http://hlth.gov.bc.ca/fhir/provider/bc-condition-restriction-code"
* extension[5].extension[3].valueCodeableConcept.coding.code = #EXP
* extension[5].extension[4].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[5].extension[4].valuePeriod.start = "1998-01-02"

// telephone
* telecom.period.start = "2000-02-02"
* telecom.use = #work
* telecom.system = #phone
* telecom.extension[areaCode].valueString = "250"
* telecom.extension[local].valueString = "111-2234"
* telecom.extension[extension].valueString = "3432"

// address
* address.period.start = "2000-02-02"
* address.use = #work
* address.type = #postal

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
* communication.coding = $PLRLanguage#EN
* communication.extension[period].valuePeriod.start = "2000-01-01"
* communication.extension[languageSource].valueString = "Language Source"


Instance: Example-PractitionerRole
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole."
* practitioner = Reference(Example-Practitioner)
* organization.display = "BC"
* code = $SCPType#MD
* specialty = http://snomed.info/sct#419772000
* specialty.extension[period].valuePeriod.start = "2000-01-01"
* specialty.extension[period].valuePeriod.end = "2020-01-01"
* specialty.extension[specialtySource].valueString = "Expertise source"

Instance: Example-Query-Response-Bundle-with-Individual-Provider
InstanceOf: Bundle
Description: "An example search response bundle."
* type = #searchset
* timestamp = "2022-02-02T13:23:13.000-08:00"
* total = 1
* link.relation = "self"
* link.url = "https://plr.hlth.gov.bc.ca/plr/fhir/Practitioner/32/$entityQuery"
* entry[0].fullUrl = "7bf3d69a-482a-472e-9003-2ade5e0ccd11"
* entry[0].resource = Example-OperationOutcome-7049
* entry[0].search.mode = #outcome
* entry[1].fullUrl = "bbc6d830-d93f-4f9a-b955-b7d7e0ae68a7"
* entry[1].search.mode = #match
* entry[1].resource = Example-Individual-Provider-Bundle

Instance: Example-Individual-Provider-Bundle
InstanceOf: BCPractitionerBundle
Description: "An example of a Provider Bundle, i.e. A Practitioner and PractitionerRole in a Bundle that represents a PLR Individual Provider."
* type = #transaction
* timestamp = "2022-02-02T13:23:13.000-08:00"
* entry[0].fullUrl = "https://plr.hlth.gov.bc.ca/plr/fhir/Practitioner/234234"
* entry[0].resource = Example-Practitioner
* entry[0].request.method = #POST
* entry[0].request.url = "http://plr.moh.bc.ca/fhir/Practitioner"
* entry[1].fullUrl = "https://plr.hlth.gov.bc.ca/plr/fhir/PractitionerRole/234234"
* entry[1].resource = Example-PractitionerRole
* entry[1].request.method = #POST
* entry[1].request.url = "http://plr.moh.bc.ca/fhir/PractitionerRole"


Instance: Example-Credential-Granting-Institution
InstanceOf: BCOrganization
Description: "Example of an credential granting institution."
* name = "University of Calgary"
* address.city = "CALGARY"
* address.state = "AB"
* address.country = "CA"
