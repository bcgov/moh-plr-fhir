Instance: Example-Organization-1
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

Instance: Example-Organization-1-Update
InstanceOf: BCOrganization
Description: "Example of an Organization."
* identifier[+] = Example-Identifier-ORGID
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* name.extension[+] = Example-ERC-Change
* alias = "ABC Clinic - Kelowna"
* address = Example-Address-Update
* telecom = Example-ContactPoint-Phone-Update
* active = true
* extension[+] = Example-Note-Update

Instance: Example-Organization-Response
InstanceOf: BCOrganization
Description: "Example of an Organization that is being created."
* identifier[+] = Example-Identifier-ORGID-Response
* identifier[+] = Example-Identifier-IPC-Org-Response
* identifier[+] = Example-Identifier-CPN-Org-Response
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* name.extension[endReason] = Example-ERC-JustOC-PHSA
* alias = "ABC Clinic - Kelowna"
* address = Example-Address-Valid-Response
* telecom = Example-ContactPoint-Phone-Response-PHSA
* active = true
* extension[+] = Example-Note-Response-PHSA


Instance: Example-Organization-2
InstanceOf: BCOrganization
Description: "Example of generic Organization."

// identifier
* identifier[0] = Example-Identifier-IPC-Org
* identifier[1] = Example-Identifier-CPN
* identifier[2] = Example-Identifier-ORGID

* name = "ABC Clinic"
* name.extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-name-use-extension"
* name.extension[0].valueCode = #official
* name.extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* name.extension[1].valuePeriod.start = "2000-01-01"
* name.extension[1].valuePeriod.end = "2022-09-01"
* alias = "ABC Clinic - Kelowna"

* telecom = Example-ContactPoint-Phone
* address = Example-Address-Valid
* extension[0] = Example-Note

// license status
* extension[1].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-license-status-extension"
* extension[1].extension[0].url = "statusCode"
* extension[1].extension[0].valueCodeableConcept.coding.system = $RoleStatus
* extension[1].extension[0].valueCodeableConcept.coding.code = #active
* extension[1].extension[1].url = "period"
* extension[1].extension[1].valuePeriod.start = "2022-02-07"
* extension[1].extension[1].valuePeriod.end = "2023-02-07"
* extension[1].extension[2].url = "statusReasonCode"
* extension[1].extension[2].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[1].extension[2].valueCodeableConcept.coding.code = #ORG



