Instance: Example-PractitionerRole-1-Role-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty

Instance: Example-PractitionerRole-1-Role-Update
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD

Instance: Example-PractitionerRole-1-Role-Update-Specialty
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty-Update

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Update-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD

Instance: Example-PractitionerRole-2-OrgRef-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-2a-OrgRef-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* period.start = "2000-01-01"
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[0].valueCodeableConcept.coding.code = #EMPLOYEE

Instance: Example-PractitionerRole-2-OrgRef-FromPractitioner-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-IPC-Org
* organization.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[=].valueCodeableConcept.coding.code = #EMPLOYEE
* organization.extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-3-LocRef-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* location.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-location-relationship-type-extension"
* location.extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* location.extension[=].valueCodeableConcept.coding.code = #WORKSAT

Instance: Example-PractitionerRole-3-LocRef-FromPractitioner-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC
* location.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-location-relationship-type-extension"
* location.extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* location.extension[=].valueCodeableConcept.coding.code = #WORKSAT
* location.extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-4-PracRef-FromOrg
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* practitioner.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* practitioner.extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* practitioner.extension[=].valueCodeableConcept.coding.code = #careteam

Instance: Example-PractitionerRole-4-PracRef-FromOrg-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind-1
* practitioner.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* practitioner.extension[=].valueCodeableConcept.coding.system = $PLRRelationshipType
* practitioner.extension[=].valueCodeableConcept.coding.code = #careteam
* practitioner.extension[+] = Example-OC-MOH

Instance: Example-PractitionerRole-5-PracRef-FromLoc
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* location.reference = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org
* practitioner.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* practitioner.extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* practitioner.extension[=].valueCodeableConcept.coding.code = #worklocationfor

Instance: Example-PractitionerRole-5-PracRef-FromLoc-Response
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* location.reference = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org
* practitioner.extension[+].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* practitioner.extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* practitioner.extension[=].valueCodeableConcept.coding.code = #worklocationfor
* practitioner.extension[+] = Example-OC-MOH
