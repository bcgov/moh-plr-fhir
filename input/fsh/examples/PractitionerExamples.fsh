Instance: Example-Practitioner
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner."
* id = "IPC.00147422.BC.PRS"

// demographics
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].valuePeriod.start = "2012-12-07"
* gender = #male
* birthDate = "1934-01-02"
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-birthplace-extension"
* extension[1].valueAddress.city = "Ottawa"
* extension[1].valueAddress.country = "CA"

// identifier
* identifier[0] = Example-Identifier-IPC
* identifier[1] = Example-Identifier-CPN
* identifier[2] = Example-Identifier-CPSID

// name
* name = Example-Name-Official

// license status
* extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-license-status-extension"
* extension[2].extension[0].url = "statusCode"
* extension[2].extension[0].valueCodeableConcept.coding.system = $RoleStatus
* extension[2].extension[0].valueCodeableConcept.coding.code = #active
* extension[2].extension[1].url = "period"
* extension[2].extension[1].valuePeriod.start = "2022-02-07"
* extension[2].extension[1].valuePeriod.end = "2023-02-07"
* extension[2].extension[2].url = "statusReasonCode"
* extension[2].extension[2].valueCodeableConcept.coding.system = $PLRStatusReason
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
* extension[5].extension[3].valueCodeableConcept.coding.system = $PLRConditionType
* extension[5].extension[3].valueCodeableConcept.coding.code = #EXP
* extension[5].extension[4].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[5].extension[4].valuePeriod.start = "1998-01-02"

// telephone
* telecom.period.start = "2000-02-02"
* telecom.system = #phone
* telecom.extension[areaCode].valueString = "250"
* telecom.extension[local].valueString = "111-2234"
* telecom.extension[extension].valueString = "3432"
* telecom.extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom.extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom.extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC

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
* communication.coding = $PLRLanguage#EN
* communication.extension[period].valuePeriod.start = "2000-01-01"
* communication.extension[languageSource].valueString = "Language Source"


Instance: Example-PractitionerRole-1
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD
* specialty = http://snomed.info/sct#419772000
* specialty.extension[period].valuePeriod.start = "2000-01-01"
* specialty.extension[period].valuePeriod.end = "2020-01-01"
* specialty.extension[specialtySource].valueString = "Expertise source"

Instance: Example-PractitionerRole-2
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = "http://hl7.org/fhir/bc-plr/bc-relationship-type-code"
* organization.extension[0].valueCodeableConcept.coding.code = #EMPLOYEE
* period.start = "2000-01-01"
* organization.reference = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00002035.BC.PRS/$entityQuery"

Instance: Example-PractitionerRole-3
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
//* practitioner.type = "Practitioner"
* location.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-location-relationship-type-extension"
* location.extension[0].valueCodeableConcept.coding.system = "http://hl7.org/fhir/bc-plr/bc-location-relationship-type-code"
* location.extension[0].valueCodeableConcept.coding.code = #WORKSAT
* period.start = "2000-01-01"
* location.reference = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Location/IFC.00034523.BC.PRS/$entityQuery"

Instance: Example-Query-Response-Bundle-with-Individual-Provider
InstanceOf: Bundle
Description: "An example search response bundle."
* type = #searchset
* timestamp = "2022-02-02T13:23:13.000-08:00"
* total = 1
* link.relation = "self"
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC32/$entityQuery"
* entry[0].fullUrl = "urn:uuid:7bf3d69a-482a-472e-9003-2ade5e0ccd11"
* entry[0].resource = Example-OperationOutcome-7049
* entry[0].search.mode = #outcome
* entry[1].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00000023.BC.PRS/$entityQuery"
* entry[1].search.mode = #match
* entry[1].resource = Example-Individual-Provider-Bundle

Instance: Example-Individual-Provider-Bundle
InstanceOf: BCPractitionerBundle
Description: "An example of a Provider Bundle, i.e. A Practitioner and PractitionerRole in a Bundle that represents a PLR Individual Provider."
* type = #transaction
* timestamp = "2022-02-02T13:23:13.000-08:00"
* entry[Practitioner].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-Practitioner
* entry[0].request.method = #POST
* entry[0].request.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC/$entityQuery"

* entry[1].resource = Example-PractitionerRole-1
* entry[1].fullUrl = "urn:uuid:0ae7755c-42cd-4583-83c6-8a4fd7a7d05c"
* entry[2].resource = Example-PractitionerRole-2
* entry[2].fullUrl = "urn:uuid:3d857c66-d80f-4c27-9669-8a9690817d03"
* entry[3].resource = Example-PractitionerRole-3
* entry[3].fullUrl = "urn:uuid:c04b2e7e-f507-4194-a301-844b691e49f5"


Instance: Example-Credential-Granting-Institution
InstanceOf: BCOrganization
Description: "Example of an credential granting institution."
* name = "University of Calgary"
* address.city = "CALGARY"
* address.state = "AB"
* address.country = "CA"
