Instance: Example-Atomic-Practitioner
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

Instance: Example-Atomic-PractitionerRole-RoleSpecialty
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
//* organization.display = "BC"
* specialty = Example-Specialty-Update
* code.coding.system = $SCPType
* code.coding.code = #MD

Instance: Example-Atomic-PractitionerRole-OrgRef
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-Atomic-PractitionerRole-LocRef
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT


Instance: Example-Atomic-Organization
InstanceOf: BCOrganization
Description: "Example of an Organization."
* identifier[+] = Example-Identifier-ORGID
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* alias = "ABC Clinic - Kelowna"
* address = Example-Address-Valid
* telecom = Example-ContactPoint-Phone
* active = true
* extension[+] = Example-Note


Instance: Example-Atomic-OrganizationAffiliation-OrgRef
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.identifier = Example-Identifier-IPC-Org
* code.coding.system = $PLRRelationshipType
* code.coding.code = #deptof
* period.start = "2000-01-01"
* participatingOrganization.identifier = Example-Identifier-IPC-Org-2

Instance: Example-Atomic-OrganizationAffiliation-LocRef
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Location relationship."
* organization.identifier = Example-Identifier-IPC-Org
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #operatesfrom
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC

Instance: Example-Atomic-Location
InstanceOf: BCLocation
Description: "Example of a Location."
* identifier = Example-Identifier-IFC
* name = "General Hospital"
* name.extension[period].valuePeriod.start = "2000-01-01"
* telecom[0].system = #fax
* telecom[0].period.start = "1982-03-04T00:00:00-07:00"
* telecom[0].value = "55555555551"
* telecom[0].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* telecom[1].system = #fax
* telecom[1].period.start = "1981-04-04T00:00:00-07:00"
* telecom[1].value = "55555555555"
* telecom[1].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.code = #HC
* telecom[2].system = #url
* telecom[2].period.start = "1991-01-01T00:00:00-07:00"
* telecom[2].value = "ftp://someftp.com"
* telecom[2].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[2].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[2].extension[commPurposeExtension].valueCodeableConcept.coding.code = #MC
* address = Example-Address-Valid



Instance: Example-GET-Practitioner-Response
InstanceOf: Bundle
Description: "Example of a response returning one Practioner."
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-Practitioner


Instance: Example-GET-Organization-Response
InstanceOf: Bundle
Description: "Example of a response returning one Organization."
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-Organization


Instance: Example-GET-Location-Response
InstanceOf: Bundle
Description: "Example of a response returning one Location"
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-Location


Instance: Example-GET-OrganizationAffiliation-Response
InstanceOf: Bundle
Description: "Example of a response returning one OrganizationAffiliation"
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-OrganizationAffiliation-OrgRef


Instance: Example-GET-OrganizationAffiliation-byOrganization-Response
InstanceOf: Bundle
Description: "Example of a response returning list of OrganizationAffiliation"
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-OrganizationAffiliation-OrgRef
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-OrganizationAffiliation-LocRef

Instance: Example-GET-PractitionerRole-Response
InstanceOf: Bundle
Description: "Example of a response returning one PractitionerRole"
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-PractitionerRole-LocRef

Instance: Example-GET-PractitionerRole-byPractitioner-Response
InstanceOf: Bundle
Description: "Example of a response returning all the PractitionerRole for one practitioner"
* type = #collection
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Atomic-PractitionerRole-RoleSpecialty
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7b2"
* entry[=].resource = Example-Atomic-PractitionerRole-LocRef
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7b3"
* entry[=].resource = Example-Atomic-PractitionerRole-OrgRef
