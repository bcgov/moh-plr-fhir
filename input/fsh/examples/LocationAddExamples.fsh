Instance: Example-Request-Add-Location
InstanceOf: Parameters
Description: "Example Parameters to add an Location (aka Facility)."
* parameter[+].name = "messageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:01-08:00"
* parameter[+].name = "maintain"
* parameter[=].resource = Example-AddLocationWithLinks-Bundle

Instance: Example-AddLocationWithLinks-Bundle
InstanceOf: BCLocationBundle
Description: "An example of bundle that is adding a location."
* type = #collection
* entry[0].fullUrl = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* entry[0].resource = Example-Location-For-Add
* entry[+].fullUrl = "urn:uuid:162587c8-eb05-40be-a3a2-ca16d52f73b3"
* entry[=].resource = Example-OrganizationAffiliation-Loc1
* entry[+].fullUrl = "urn:uuid:809e0074-ded0-11ed-b5ea-0242ac120002"
* entry[=].resource = Example-OrganizationAffiliation-Loc2
* entry[+].fullUrl = "urn:uuid:ef046dcc-7ebe-401b-b44e-594ed21bed81"
* entry[=].resource = Example-PractitionerRole-Loc3

Instance: Example-Location-For-Add
InstanceOf: BCLocation
Description: "Example of a Location."
//* id = "IFC.00147422.BC.PRS"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
* extension[=].extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].extension[=].valuePeriod.start = "2000-01-01"
* identifier = Example-Identifier-FACID-22
* name = "General Hospital"
* name.extension[period].valuePeriod.start = "2000-01-01"
* alias = "Long name or alias or description"
* telecom[0].system = #fax
* telecom[0].period.start = "1982-03-04T00:00:00-07:00"
* telecom[0].value = "55555555551"
* telecom[0].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #FC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-mailing-address-extension"
* extension[=].valueAddress = Example-Address-Fac
* address = Example-Address-Fac
//* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension"
//* extension[=].valueIdentifier.assigner.display = "Langford/Highlands"
* physicalType.coding.code = #bu
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"

Instance: Example-Address-Fac
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
* type = #physical
* line[0] = "1000 DOUGLAS ST"
* city = "VICTORIA"
* postalCode = "V6P7B8"
* state = "BC"
* country = "CA"
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRCommPurpose
* extension[=].valueCodeableConcept.coding.code = #FC
//* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-address-validation-status-extension"
//* extension[=].valueCodeableConcept.coding.system = $PLRAddressValStatus
//* extension[=].valueCodeableConcept.coding.code = #V
* period.start = "2000-01-01"

Instance: Example-OrganizationAffiliation-Loc1
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Location relationship."
//* id = "RELN.182.PRS"
* organization.identifier.system = $System_IPC
* organization.identifier.value = "IPC.70007000.PRS.BC"
* organization.identifier.period.start = "2000-01-01"
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #OPERATES
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-FACID-22

Instance: Example-OrganizationAffiliation-Loc2
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Location relationship."
//* id = "RELN.142.PRS"
* organization.identifier.system = $System_IPC
* organization.identifier.value = "IPC.90009000.PRS.BC"
* organization.identifier.period.start = "2000-01-01"
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #OWNS
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-FACID-22

Instance: Example-PractitionerRole-Loc3
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
//* id = "RELN.125.PRS"
* practitioner.identifier.system = $System_IPC
* practitioner.identifier.value = "IPC.80008000.PRS.BC"
* practitioner.identifier.period.start = "2000-01-01"
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-FACID-22
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #PRACTICES_AT

Instance: Example-Identifier-FACID-22
InstanceOf: Identifier
Description: "Identifier example for Facility ID."
Usage: #inline
* system = $System_FACID
* value = "22"
* period.start = "2000-01-01"

