Instance: Example-Organization-1
InstanceOf: BCOrganization
Description: "Example of an Organization that is being created."
* identifier = Example-Identifier-ORGID
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* address = Example-Address-Valid
* telecom[0].system = #phone
* telecom[0].value = "7786428585"
* telecom[0].period.start = "2014-01-31T00:00:00-07:00"
* telecom[0].extension[commPurposeExtension].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* active = true


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



