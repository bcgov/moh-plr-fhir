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
* type = $PLROrganizationRoleCode#ORG
// license status
* extension[1].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
* extension[1].extension[+].url = "statusCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $RoleStatus
* extension[1].extension[=].valueCodeableConcept.coding.code = #active
* extension[1].extension[+].url = "period"
* extension[1].extension[=].valuePeriod.start = "2022-02-07"
* extension[1].extension[=].valuePeriod.end = "2023-12-07"
* extension[1].extension[+].url = "statusReasonCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[1].extension[=].valueCodeableConcept.coding.code = #ORG
* extension[1].extension[+].url = "statusClassCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $PLRStatusClass
* extension[1].extension[=].valueCodeableConcept.coding.code = #AE

Instance: Example-Organization-1-Update
InstanceOf: BCOrganization
Description: "Example of an Organization."
* id = "IPC.00147434.BC.PRS"
* identifier[+] = Example-Identifier-ORGID
* identifier[+] = Example-Identifier-IPC-Org-147434
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* name.extension[endReason].valueCodeableConcept.coding.system = $PLREndReason
* name.extension[endReason].valueCodeableConcept.coding.code = #CHG
* alias = "ABC Clinic - Kelowna"
* address = Example-Address-Update
* telecom = Example-ContactPoint-Phone-Update
* active = true
* extension[+] = Example-Note-Update
* type = $PLROrganizationRoleCode#ORG

Instance: Example-Organization-Response
InstanceOf: BCOrganization
Description: "Example of an Organization that is being created."
* id = "IPC.00147436.BC.PRS"
* identifier[+] = Example-Identifier-ORGID-Response
* identifier[+] = Example-Identifier-IPC-Org-Response-147436
* identifier[+] = Example-Identifier-CPN-Org-Response-147433
* name = "Kelowna Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2014-01-31T00:00:00-07:00"
* name.extension[owner].valueIdentifier.assigner.display = "PHSA"
* alias = "ABC Clinic - Kelowna"
* address = Example-Address-Valid-Response
* telecom = Example-ContactPoint-Phone-Response-PHSA
* active = true
* extension[+] = Example-Note-Response-PHSA
* type = $PLROrganizationRoleCode#CLINIC


Instance: Example-Organization-2
InstanceOf: BCOrganization
Description: "Example of generic Organization."
* id = "IPC.00147437.BC.PRS"
* type = $PLROrganizationRoleCode#ORG

// identifier
* identifier[0] = Example-Identifier-IPC-Org-147476
* identifier[1] = Example-Identifier-CPN-147422
* identifier[2] = Example-Identifier-ORGID

* name = "ABC Clinic"
* name.extension[0].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension"
* name.extension[0].valueCode = #official
* name.extension[1].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* name.extension[1].valuePeriod.start = "2000-01-01"
* name.extension[1].valuePeriod.end = "2022-09-01"
* alias = "ABC Clinic - Kelowna"

* telecom = Example-ContactPoint-Phone
* address = Example-Address-Valid
* extension[0] = Example-Note

// license status
* extension[1].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
* extension[1].extension[+].url = "statusCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $RoleStatus
* extension[1].extension[=].valueCodeableConcept.coding.code = #active
* extension[1].extension[+].url = "period"
* extension[1].extension[=].valuePeriod.start = "2022-02-07"
* extension[1].extension[=].valuePeriod.end = "2023-02-07"
* extension[1].extension[+].url = "statusReasonCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[1].extension[=].valueCodeableConcept.coding.code = #ORG
* extension[1].extension[+].url = "statusClassCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $PLRStatusClass
* extension[1].extension[=].valueCodeableConcept.coding.code = #AE

Instance: Example-Organization-PrimaryCare
InstanceOf: BCOrganization
Description: "Example of an Primary Care clinic"
* identifier[+] = Example-Identifier-ORGID-forPrimaryCare
* name = "Kelowna PC Clinic"
* name.extension[use].valueCode = #official
* name.extension[period].valuePeriod.start = "2021-12-31T00:00:00-07:00"
* alias = "Primary Care Clinic - Kelowna"
* address = Example-Address-Valid
* telecom = Example-ContactPoint-Phone
* active = true
* extension[0] = Example-Note

* type = $PLROrganizationRoleCode#ORG
// license status
* extension[1].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-license-status-extension"
* extension[1].extension[+].url = "statusCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $RoleStatus
* extension[1].extension[=].valueCodeableConcept.coding.code = #active
* extension[1].extension[+].url = "period"
* extension[1].extension[=].valuePeriod.start = "2022-02-07"
* extension[1].extension[=].valuePeriod.end = "2023-12-07"
* extension[1].extension[+].url = "statusReasonCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $PLRStatusReason
* extension[1].extension[=].valueCodeableConcept.coding.code = #ORG
* extension[1].extension[+].url = "statusClassCode"
* extension[1].extension[=].valueCodeableConcept.coding.system = $PLRStatusClass
* extension[1].extension[=].valueCodeableConcept.coding.code = #AE

* extension[2] = Example-PayeeNumber
* extension[3] = Example-Availability-Extension
* extension[4] = Example-PrimaryCare-Extension

Instance: Example-PrimaryCare-Extension
InstanceOf: Extension
Description: "Primary Care Extension."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-primary-care-clinic-extension"
* extension[0] = Example-Clinic-Type
* extension[1] = Example-Clinic-Ownership-Type
* extension[2] = Example-Clinic-Service-Delivery-Type
* extension[3] = Example-PCI-Flag
* extension[4] = Example-Clinic-Legal-Name
* extension[5] = Example-Clinic-Owners

Instance: Example-Clinic-Ownership-Type
InstanceOf: Extension
Description: "PC Clinic Service Delivery Type"
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.963.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "ownershipType"
//* extension[1].valueCodeableConcept.coding.system = $PLRClinicOwnershipType
//* extension[1].valueCodeableConcept.text="Other"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-Clinic-Service-Delivery-Type
InstanceOf: Extension
Description: "PC Clinic Service Delivery Type"
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-service-delivery-type-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.258.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "serviceDeliveryType"
//* extension[1].valueCodeableConcept.coding.system = $PLRClinicServiceDeliveryType
//* extension[1].valueCodeableConcept.text="Longitudinal"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-Clinic-Type
InstanceOf: Extension
Description: "PC Clinic Type"
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-type-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.987.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "clinicType"
//* extension[1].valueCodeableConcept.coding.system = $PLRPrimaryCareClinicType
//* extension[1].valueCodeableConcept[0].text.value="Longitudinal Primary Care Practice"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-Clinic-Owners
InstanceOf: Extension
Description: "PC Clinic Owners"
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-owner-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.654.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "clinicOwner"
* extension[1].valueString = "John Doe, Dc Singh, Interior Health Authority"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-Clinic-Legal-Name
InstanceOf: Extension
Description: "PC Clinic Legal Name"
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-legal-name-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.741.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "clinicLegalName"
* extension[1].valueString = "Kelowna Downtown Primary Care Clinic Org."
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-PCI-Flag
InstanceOf: Extension
Description: "PC Clinic Legal Name"
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.852.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "pciFlag"
* extension[1].valueBoolean = true
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-PayeeNumber
InstanceOf: Extension
Description: "Example payee number."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-payee-number-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.123.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[1].url = "payeeNumber"
* extension[1].valueString = "123456"
* extension[2].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[2].valuePeriod.start = "2023-01-02"

Instance: Example-Availability-Extension
InstanceOf: Extension
Description: "Example Availability extension."
Usage: #inline
* url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availability-extension"
* extension[0].url = "identifier"
* extension[0].valueIdentifier.value = "PRPTY.145.PRS"
//* extension[0].valueIdentifier.system = $PLRPropertyID
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension"
* extension[=].extension[+].url = "daysOfWeek"
* extension[=].extension[=].valueCode = #Mon
* extension[=].extension[+].url = "daysOfWeek"
* extension[=].extension[=].valueCode = #Wed
* extension[=].extension[+].url = "availableStartTime"
* extension[=].extension[=].valueTime = "09:00:00"
* extension[=].extension[+].url = "availableEndTime"
* extension[=].extension[=].valueTime = "17:00:00"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-availableTime-extension"
* extension[=].extension[0].url = "daysOfWeek"
* extension[=].extension[0].valueCodeableConcept.coding.system = $CSDayOfWeek
* extension[=].extension[0].valueCodeableConcept.coding.code = #Tue
* extension[=].extension[1].url = "allDay"
* extension[=].extension[1].valueBoolean = true
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].valuePeriod.start = "2023-01-02"
