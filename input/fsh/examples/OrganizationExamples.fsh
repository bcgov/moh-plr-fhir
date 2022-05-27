Instance: Example-Organization-1
InstanceOf: BCOrganization
Description: "Example of an Organization that is being created."
* identifier[0] = Example-Identifier-CPN
* identifier[1] = Example-Identifier-IPC-Org
* identifier[2] = Example-Identifier-ORGID
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


Instance: Example-Organization
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

// note
* extension[0].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-note-extension"
* extension[0].extension[0].url = "identifier"
* extension[0].extension[0].valueIdentifier.value = "Note-2"
* extension[0].extension[1].url = "text"
* extension[0].extension[1].valueString = "Note text"
* extension[0].extension[2].url = "http://hl7.org/fhir/ca-bc/provider/StructureDefinition/bc-period-extension"
* extension[0].extension[2].valuePeriod.start = "1998-01-02"

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



