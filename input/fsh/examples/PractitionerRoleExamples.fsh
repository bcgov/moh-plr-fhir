Instance: Example-PractitionerRole-1-Role-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty

Instance: Example-PractitionerRole-2-OrgReference-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Organization relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* practitioner.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* practitioner.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* practitioner.extension[0].valueCodeableConcept.coding.code = #EMPLOYEE
* period.start = "2000-01-01"
* organization.identifier = Example-Identifier-ORGID

Instance: Example-PractitionerRole-3-LocReference-FromPractitioner
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* practitioner.reference = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* practitioner.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-location-relationship-type-extension"
* practitioner.extension[0].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* practitioner.extension[0].valueCodeableConcept.coding.code = #WORKSAT
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC

Instance: Example-PractitionerRole-4-PracReference-FromOrg
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* organization.reference = "urn:uuid:f0e4e1ca-6bc7-4b8f-839b-1d715856a04f"
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[0].valueCodeableConcept.coding.code = #CARETEAM
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Ind

Instance: Example-PractitionerRole-5-PracReference-FromLoc
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole for Practitioner to Practitioner relationship."
* location.reference = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* location.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* location.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* location.extension[0].valueCodeableConcept.coding.code = #CARETEAM
* period.start = "2000-01-01"
* practitioner.identifier = Example-Identifier-IPC-Org
