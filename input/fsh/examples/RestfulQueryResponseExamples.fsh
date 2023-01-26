Instance: Example-Atomic-Practitioner
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner."
// demographics
* extension[0] = Example-Demographics-1
* gender = #male
* birthDate = "1934-01-02"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* extension[1] = Example-Demographics-2
* id = "IPC.00047422.BC.PRS"
* identifier[0] = Example-Identifier-IPC-Ind-047422
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

Instance: Example-Another-Atomic-Practitioner
InstanceOf: BCPractitioner
Description: "Example of another generic Practitioner."
// demographics
* extension[0] = Example-Demographics-1
* gender = #male
* birthDate = "1962-11-02"
* birthDate.extension[birthTime].valueDateTime = "1962-11-02T00:00:01-06:00"
* extension[1] = Example-Demographics-2
* id = "IPC.00187833.BC.PRS"
* identifier[0] = Example-Identifier-IPC-Ind-187833
* name = Example-Name-Official
* extension[2] = Example-License-Status
* extension[3] = Example-Condition
* extension[4] = Example-Confidenciality-False
* extension[5] = Example-AddPractitioner-RelatedPractitioner
* telecom = Example-ContactPoint-Phone
* address = Example-Address-Invalid
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
* id = "IPC.00047422.BC.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-047422
* specialty = Example-Specialty-Update
* code.coding.system = $SCPType
* code.coding.code = #MD

Instance: Example-Atomic-PractitionerRole-OrgRef
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* id = "RELN.23.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org-147436
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-Atomic-PractitionerRole-LocRef
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* id = "RELN.24.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT


Instance: Example-Atomic-Organization
InstanceOf: BCOrganization
Description: "Example of an Organization."
* id = "IPC.00047422.BC.PRS"
* identifier[+] = Example-Identifier-IPC-Ind-047422
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
* id = "RELN.25.PRS"
* organization.identifier = Example-Identifier-IPC-Org-147436
* code.coding.system = $PLRRelationshipType
* code.coding.code = #deptof
* period.start = "2000-01-01"
* participatingOrganization.identifier = Example-Identifier-IPC-Org-164553

Instance: Example-Atomic-OrganizationAffiliation-LocRef
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Location relationship."
* id = "RELN.26.PRS"
* organization.identifier = Example-Identifier-IPC-Org-147436
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #operatesfrom
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC

Instance: Example-Atomic-Location
InstanceOf: BCLocation
Description: "Example of a Location."
* id = "IFC.00047422.BC.PRS"
* identifier = Example-Identifier-IFC-47422
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
Description: "Example of a response returning one Practioners."
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00047422.BC.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00047422.BC.PRS"
* entry[=].resource = Example-Atomic-Practitioner
* entry[=].search.mode = #match


Instance: Example-GET-Organization-Response
InstanceOf: Bundle
Description: "Example of a response returning one Organization."
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00047422.BC.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00047422.BC.PRS"
* entry[=].resource = Example-Atomic-Organization
* entry[=].search.mode = #match


Instance: Example-GET-Location-Response
InstanceOf: Bundle
Description: "Example of a response returning one Location"
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Location/IFC.00047422.BC.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Location/IFC.00047422.BC.PRS"
* entry[=].resource = Example-Atomic-Location
* entry[=].search.mode = #match


Instance: Example-GET-OrganizationAffiliation-Response
InstanceOf: Bundle
Description: "Example of a response returning one OrganizationAffiliation"
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.25.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.25.PRS"
* entry[=].resource = Example-Atomic-OrganizationAffiliation-OrgRef
* entry[=].search.mode = #match


Instance: Example-GET-OrganizationAffiliation-byOrganization-Response
InstanceOf: Bundle
Description: "Example of a response returning list of OrganizationAffiliation"
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/organziation=Organization/IPC.00147436.BC.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.25.PRS"
* entry[=].resource = Example-Atomic-OrganizationAffiliation-OrgRef
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.26.PRS"
* entry[=].resource = Example-Atomic-OrganizationAffiliation-LocRef
* entry[=].search.mode = #match

Instance: Example-GET-PractitionerRole-Response
InstanceOf: Bundle
Description: "Example of a response returning one PractitionerRole"
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00147422.BC.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.24.PRS"
* entry[=].resource = Example-Atomic-PractitionerRole-LocRef
* entry[=].search.mode = #match

Instance: Example-GET-PractitionerRole-byPractitioner-Response
InstanceOf: Bundle
Description: "Example of a response returning all the PractitionerRole for one practitioner"
* type = #searchset
* link.relation = #self
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/practitioner=Practitioner/IPC.00147422.BC.PRS"
* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
* entry[=].resource = Example-OperationOutcome-Success
* entry[=].search.mode = #include
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00047422.BC.PRS"
* entry[=].resource = Example-Atomic-PractitionerRole-RoleSpecialty
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.24.PRS"
* entry[=].resource = Example-Atomic-PractitionerRole-LocRef
* entry[=].search.mode = #match
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.23.PRS"
* entry[=].resource = Example-Atomic-PractitionerRole-OrgRef
* entry[=].search.mode = #match
