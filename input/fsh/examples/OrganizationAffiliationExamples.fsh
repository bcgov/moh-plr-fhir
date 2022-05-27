Instance: Example-OrganizationAffiliation-1-OrgReference-FromOrg
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.reference = "urn:uuid:f0e4e1ca-6bc7-4b8f-839b-1d715856a04f"
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[0].valueCodeableConcept.coding.code = #DEPTOF
* period.start = "2000-01-01"
* participatingOrganization.identifier = Example-Identifier-ORGID

Instance: Example-OrganizationAffiliation-2-LocReference-FromOrg
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.reference = "urn:uuid:f0e4e1ca-6bc7-4b8f-839b-1d715856a04f"
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[0].valueCodeableConcept.coding.code = #DEPTOF
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC

Instance: Example-OrganizationAffiliation-1
InstanceOf: BCOrganizationAffiliation
Description: "Example of a relationship between an Organization and its Locations (facilities)."
* active = true
* period.start = "1989-04-04T00:00:00-07:00"
* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* organization.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-relationship-type-extension"
* organization.extension[0].valueCodeableConcept.coding.system = $PLRRelationshipType
* organization.extension[0].valueCodeableConcept.coding.code = #DEPTOF
* location.identifier = Example-Identifier-IFC

