Instance: Example-OrganizationAffiliation-1-OrgRef-FromOrg
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* code.coding.system = $PLRRelationshipType
* code.coding.code = #deptof
* period.start = "2000-01-01"
* participatingOrganization.identifier = Example-Identifier-ORGID

Instance: Example-OrganizationAffiliation-2-LocRef-FromOrg
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.reference = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #operatesfrom
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC

