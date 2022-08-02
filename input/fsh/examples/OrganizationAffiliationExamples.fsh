Instance: Example-OrganizationAffiliation-1-OrgRef-FromOrg
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.identifier = Example-Identifier-IPC-Org
* code.coding.system = $PLRRelationshipType
* code.coding.code = #deptof
* period.start = "2000-01-01"
* participatingOrganization.identifier = Example-Identifier-IPC-Org-2

Instance: Example-OrganizationAffiliation-2-LocRef-FromOrg
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Organization relationship."
* organization.identifier = Example-Identifier-IPC-Org
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #operatesfrom
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC

