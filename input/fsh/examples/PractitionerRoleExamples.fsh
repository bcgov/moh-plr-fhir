Instance: Example-PractitionerRole-1-Role-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* id = "IPC.00147422.BC.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
//* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty

Instance: Example-PractitionerRole-Role-FromPrac-CPSID
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
//* id = "IPC.00147422.BC.PRS"
* practitioner.identifier = Example-Identifier-CPSID
//* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* id = "IPC.00147622.BC.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-Response-147622
//* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty-Response

Instance: Example-PractitionerRole-1-Role-Update
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* id = "IPC.00763481.BC.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-763481
//* organization.display = "BC"
* code.coding.system = $SCPType
* code.coding.code = #MD

Instance: Example-PractitionerRole-Role-Update-Specialty
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* id = "IPC.00147433.BC.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147433
//* practitioner.identifier = Example-Identifier-IPC-Ind-Response-147622
//* organization.display = "BC"
* specialty = Example-Specialty-Update
* code.coding.system = $SCPType
* code.coding.code = #MD

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Update-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* id = "IPC.00147633.BC.PRS"
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
//* organization.display = "BC"
* code = $SCPType#MD

Instance: Example-PractitionerRole-2-OrgRef-FromPractitioner
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* id = "RELN.123.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org-Response-147436
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-5-OrgRef-FromPractitioner
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* id = "RELN.153.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-Response-147622
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org-Response-147436
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-OrgRef-FromPractitioner-1
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* id = "RELN.173.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147433
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org-Response-147436
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-OrgRef-FromPractitioner-2
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* id = "RELN.193.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147438
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org-Response-147434
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-2-OrgRef-FromPractitioner-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* id = "RELN.124.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-Response-147622
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org-147622
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #EMPLOYEE
* extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-3-LocRef-FromPractitioner
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* id = "RELN.125.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT

Instance: Example-PractitionerRole-LocRef-FromPractitioner-3
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* id = "RELN.175.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-147433
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT

Instance: Example-PractitionerRole-3-LocRef-FromPractitioner-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* id = "RELN.126.PRS"
* practitioner.identifier = Example-Identifier-IPC-Ind-Response-147622
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT
* extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-4-PracRef-FromOrg
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* id = "RELN.127.PRS"
* organization.identifier = Example-Identifier-IPC-Org-147476
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #careteam

Instance: Example-PractitionerRole-4-PracRef-FromOrg-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* id = "RELN.128.PRS"
* organization.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind-147422
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #careteam
* extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-5-PracRef-FromLoc
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* id = "RELN.129.PRS"
* location.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org-147436
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #worklocationfor

Instance: Example-PractitionerRole-5-PracRef-FromLoc-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* id = "RELN.130.PRS"
* location.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org-147436
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #worklocationfor
* extension[+] = Example-OC-MOH
