Instance: Example-PractitionerRole-1-Role-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
//* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.identifier = Example-Identifier-IPC-Ind-1-Response
//* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty-Response

Instance: Example-PractitionerRole-1-Role-Update
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
//* organization.display = "BC"
* code.coding.system = $SCPType
* code.coding.code = #MD

Instance: Example-PractitionerRole-1-Role-Update-Specialty
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
//* organization.display = "BC"
* specialty = Example-Specialty-Update
* code.coding.system = $SCPType
* code.coding.code = #MD

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Update-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
//* organization.display = "BC"
* code = $SCPType#MD

Instance: Example-PractitionerRole-2-OrgRef-FromPractitioner
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org
* extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

//Instance: Example-PractitionerRole-2a-OrgRef-FromPractitioner
//InstanceOf: BCPractitionerRoleRelationships
//Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
//* practitioner.identifier = Example-Identifier-IPC-Ind-1
//* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
//* period.start = "2000-01-01"
//* organization.extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
//* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
//* organization.extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-2-OrgRef-FromPractitioner-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #EMPLOYEE
* extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-3-LocRef-FromPractitioner
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT

Instance: Example-PractitionerRole-3-LocRef-FromPractitioner-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #WORKSAT
* extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-4-PracRef-FromOrg
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* organization.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #careteam

Instance: Example-PractitionerRole-4-PracRef-FromOrg-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* organization.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* extension[=].valueCodeableConcept.coding.code = #careteam
* extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-5-PracRef-FromLoc
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* location.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #worklocationfor

Instance: Example-PractitionerRole-5-PracRef-FromLoc-Response
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* location.identifier = Example-Identifier-IFC
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #worklocationfor
* extension[+] = Example-OC-MOH
