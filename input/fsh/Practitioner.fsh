Profile: BCPractitioner
Parent: Practitioner
Id: bc-practitioner
Description: "General constraints on the Practitioner resource for use in the BC Provider Registry project."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.description = "The organization that authorized a qualification."
* contained contains QualificationOrganization 0..* MS
* contained[QualificationOrganization] only BCOrganization
* identifier only BCIdentifier
* identifier 1..* MS
* active MS
* name only BCHumanName 
* name 1..* MS
* telecom only BCContactPoint
* telecom MS
* address only BCAddress 
* address MS
* gender MS
* birthDate MS
* birthDate.extension contains BirthTimeExtension named birthTime 0..1 MS
* qualification MS
* qualification.extension contains PractitionerQualificationExtension named qualificationExtension 1..1 MS and EndReasonExtension named endReason 0..1 MS
* qualification.identifier MS
* qualification.code MS
* qualification.code from $PracQualification (required)
* qualification.period MS
* qualification.issuer MS
* qualification.issuer only Reference(BCOrganization)
* communication MS
* communication.extension contains PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS and SpecialtySourceExtension named languageSource 0..1 MS
* extension contains PeriodExtension named demographicsPeriod 1..1 MS and EndReasonExtension named demographicsEndReason 0..1 MS and 
    LicenseStatusExtension named status 0..* MS and 
	DeathDateExtension named deathDate 0..1 MS and 
	BirthPlaceExtension named birthplace 0..1 MS and
	PractitionerConfidentialityExtension named confidentiality 0..1 MS and
	PractitionerRelationshipExtension named relationship 0..* MS and
	PractitionerDiscplinaryActionExtension named disciplinaryAction 0..* MS and
	NoteExtension named note 0..* MS and
	PractitionerConditionExtension named condition 0..* MS

Profile: BCPractitionerRole
Parent: PractitionerRole
Id: bc-practitioner-role
Description: "General constraints on the PractitionerRole resource for use in the BC Provider Registry project."
* identifier 0..* MS
* active MS
* period MS
* practitioner 1..1 MS
* practitioner only Reference(BCPractitioner) 
* organization MS
* organization only Reference(BCOrganization)
* organization.extension contains EndReasonExtension named endReason 0..1 MS
  and RelationshipTypeExtension named typeExtension 0..1 MS
* organization.type 0..0
* code MS 
* code from $PracRoleCode (required)
* specialty MS
* specialty from $PracSpecialty (required)
* specialty.extension contains PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS and SpecialtySourceExtension named specialtySource 0..1 MS
* location MS
* location only Reference(BCLocation)
* location.extension contains EndReasonExtension named endReason 0..1 MS and LocationRelationshipTypeExtension named locRelationshipType 0..1 MS
* telecom only BCContactPoint
* telecom MS

Extension: RelationshipTypeExtension
Id: bc-relationship-type-extension
Title: "BC Practitioner to Organization or Practitioner to Practitioner Type Extension."
Description: "The relationship type of a Practitioner to Organization or Practitioner to Practitioner relationship."
* value[x] only CodeableConcept
* value[x] 1..1 MS

Extension: LocationRelationshipTypeExtension
Id: bc-location-relationship-type-extension
Title: "BC Practitioner to Location Type Extension."
Description: "The relationship type of a Practitioner to Location relationship."
* value[x] only CodeableConcept
* value[x] 1..1 MS

Extension: SpecialtySourceExtension
Id: bc-specialty-source-extension
Title: "BC Specialty Source Extension"
Description: "The specialty source."
* value[x] only string
* value[x] 1..1 MS

Extension: DeathDateExtension
Id: bc-practitioner-deathdate-extension
Title: "BC Practitioner Date of Death Extension"
Description: "The Date of Death of a Practitioner."
* value[x] only dateTime
* value[x] 1..1 MS

Extension: BirthTimeExtension
Id: bc-birthtime-extension
Title: "BC Birth Time Extension"
Description: "Adds birth time to the birth date."
* value[x] only dateTime
* value[x] 1..1 MS

Extension: BirthPlaceExtension
Id: bc-birthplace-extension
Title: "BC Birth Place Extension"
Description: "Captures the place where a patient/practitioner/person was born."
* value[x] only Address
* value[x] 1..1 MS

Extension: PractitionerConfidentialityExtension
Id: bc-practitioner-confidentiality-extension
Title: "BC Practitioner Confidentiality Extension"
Description: "Indicates the confidentiality of the practitioner's information."
* extension contains code 1..1 MS and PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1 MS
* extension[code].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification (required)

Extension: PractitionerRelationshipExtension
Id: bc-practitioner-relationship-extension
Title: "BC Practitioner to Practitioner Relationship Extension"
Description: "Allows for relationships of practitioners to practitioners without needing CareTeam semantics."
* extension contains PeriodExtension named period 1..1 MS and practitioner 1..1 MS and RelationshipTypeExtension named type 1..1 MS and EndReasonExtension named endReason 0..1 MS
* extension[practitioner].value[x] only Reference(BCPractitioner)
* extension[practitioner].value[x] 1..1 MS
* extension[type].value[x] only CodeableConcept
* extension[type].value[x] 1..1 MS

Extension: PractitionerDiscplinaryActionExtension
Id: bc-practitioner-disciplinary-action-extension
Title: "BC Practitioner Disciplinary Actions Extension"
Description: "Provides details of disciplinary actions against the provider."
* extension contains identifier 1..1 MS and description 1..1 MS and PeriodExtension named period 1..1 MS and archiveDate 1..1 MS and displayFlag 1..1 MS and EndReasonExtension named endReason 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS
* extension[description].value[x] only string
* extension[description].value[x] 1..1 MS
* extension[archiveDate].value[x] only dateTime
* extension[archiveDate].value[x] 1..1 MS
* extension[displayFlag].value[x] only boolean
* extension[displayFlag].value[x] 1..1 MS

Extension: NoteExtension
Id: bc-note-extension
Title: "BC Notes Extension"
Description: "Notes about the practitioner/location/organization."
* extension contains identifier 1..1 MS and text 1..1 MS and PeriodExtension named period 1..1 MS and EndReasonExtension named endReason 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS
* extension[text].value[x] only string
* extension[text].value[x] 1..1 MS

Extension: PractitionerConditionExtension
Id: bc-practitioner-condition-extension
Title: "BC Practitioner Conditions Extension"
Description: "Conditions on the provider's role"
* extension contains identifier 1..1 MS and PeriodExtension named period 1..1 MS and restriction 1..1 MS and restrictionText 1..1 MS and code 1..1 MS and EndReasonExtension named endReason 0..1 MS
* extension[identifier].value[x] only Identifier
* extension[identifier].value[x] 1..1 MS
* extension[restriction].value[x] only boolean
* extension[restriction].value[x] 1..1 MS
* extension[restrictionText].value[x] only string
* extension[restrictionText].value[x] 1..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] 1..1 MS

Extension: PractitionerQualificationIssueDateExtension
Id: bc-practitioner-qualification-issue-date-extension
Title: "BC Practitioner Qualification Issue Date Extensino"
Description: "The issue date of the practitioner's qualification."
* value[x] only dateTime
* value[x] 1..1 MS

Extension:  PractitionerQualificationExtension
Id: bc-practitioner-qualification-extension
Title: "BC Practitioner Qualification Extension"
Description: "The qualifications extensions."
* extension contains designation 1..1 MS and registrationNumber 0..1 MS and equivalencyFlag 1..1 MS and issuedDate 0..1 MS
* extension[designation].value[x] only string
* extension[designation].value[x] 1..1 MS
* extension[registrationNumber].value[x] only string
* extension[registrationNumber].value[x] 0..1 MS
* extension[equivalencyFlag].value[x] only boolean
* extension[equivalencyFlag].value[x] 1..1 MS
* extension[issuedDate].value[x] only dateTime
* extension[issuedDate].value[x] 0..1 MS


Extension: LicenseStatusExtension
Id: bc-license-status-extension
Title: "BC License Status Extension"
Description: "Tracking the status and changes to the status of a practitioner/organization license."
* extension contains statusCode 1..1 MS and statusReasonCode 1..1 MS and statusClassCode 0..1 MS and PeriodExtension named period 0..1 MS and EndReasonExtension named endReasonCodeAndOwner 0..1 MS
* extension[statusCode].value[x] only CodeableConcept
* extension[statusCode].value[x] 1..1 MS
* extension[statusCode].valueCodeableConcept from $StatusVS (required)
* extension[statusCode].valueCodeableConcept 1..1 MS
* extension[statusReasonCode].value[x] only CodeableConcept
* extension[statusReasonCode].value[x] 1..1 MS
* extension[statusClassCode].value[x] only CodeableConcept
* extension[statusClassCode].value[x] 0..1 MS

Profile: BCPractitionerBundle
Parent: Bundle
Id: bc-practitioner-bundle
Description: "A bundle that submits Practitioner and PractitionerRole information."
* type 1..1 MS
* type = #transaction (exactly)
* entry 1..*
* entry.resource 1..1 MS
* entry.fullUrl 0..1 MS
* entry.search 0..0
* entry.request 0..1 MS
* entry.response 0..0
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "The specific bundle entries that are needed for creating or updating a BC Practitioner."
* entry contains Practitioner 1..1 MS and PractitionerRole 0..* MS
* entry[Practitioner].resource only BCPractitioner
* entry[PractitionerRole].resource only BCPractitionerRole

Instance: Example-AddPractitioner-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when requesting a practitioner create."
* type = #transaction
* entry[0].fullUrl = "http://plr.moh.bc.ca/fhir/Practitioner/12345"
* entry[0].resource = Example-AddPractitioner-Practitioner
* entry[0].request.method = #POST
* entry[0].request.url = "http://plr.moh.bc.ca/fhir/Practitioner"
* entry[1].fullUrl = "http://plr.moh.bc.ca/fhir/PractitionerRole/12345"
* entry[1].resource = Example-AddPractitioner-PractitionerRole
* entry[1].request.method = #POST
* entry[1].request.url = "http://plr.moh.bc.ca/fhir/PractitionerRole"

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
* identifier.system = "urn:oid:2.16.840.1.113883.3.40.2.4"
* identifier.value = "MD20180719V01"
* identifier.period.start = "2000-01-01"
* identifier.period.end = "2020-01-01"
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

//* address.use = #work
* address.type = #postal
* address.line = "91 RD"
* address.line[1] = "ADDRESS ADDRESSLINE2TXT"
* address.line[2] = "ADDRESS ADDRESSLINE3TXT"
* address.city = "VICTORIA"
* address.state = "BC"
* address.postalCode = "V8V8V8"
* address.period.start = "2000-01-01"
* address.period.end = "2020-01-01"
* address.extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* address.extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* address.extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC


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
* identifier.system = $PLRIdentifierType
* identifier.value = "123123123"
* identifier.type = #RNID
* name.text = "23"

Instance: Example-AddPractitioner-PractitionerRole
InstanceOf: BCPractitionerRole
Description: "Example of the role that the created practitioner is playing."
* practitioner = Reference(Example-AddPractitioner-Practitioner)
* organization.display = "BC"
* code = $SCPType#MD
* specialty = http://snomed.info/sct#419772000
* specialty.extension[period].valuePeriod.start = "2000-01-01"
* specialty.extension[period].valuePeriod.end = "2020-01-01"
* specialty.extension[endReason].extension[endReasonCode].valueCodeableConcept = $PLREndReason#CORR
* specialty.extension[endReason].extension[custodianId].valueIdentifier.assigner.display = "RNA"
* specialty.extension[specialtySource].valueString = "Source"
* location = Reference(Example-AddPractitioner-WorkLocation)
* location.extension[period].valuePeriod.start = "2000-01-01"
* location.extension[period].valuePeriod.end = "2020-01-01"

