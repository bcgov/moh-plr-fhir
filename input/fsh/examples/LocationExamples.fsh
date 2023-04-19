Instance: Example-AddLocationWithLinks-Bundle
InstanceOf: BCLocationBundle
Description: "An example of bundle that is adding a location."
* type = #collection
* entry[0].fullUrl = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* entry[0].resource = Example-Location-For-Add
* entry[+].fullUrl = "162587c8-eb05-40be-a3a2-ca16d52f73b3"
* entry[=].resource = Example-OrganizationAffiliation-Loc1
* entry[+].fullUrl = "809e0074-ded0-11ed-b5ea-0242ac120002"
* entry[=].resource = Example-OrganizationAffiliation-Loc2
* entry[+].fullUrl = "ef046dcc-7ebe-401b-b44e-594ed21bed81"
* entry[=].resource = Example-PractitionerRole-Loc3

Instance: Example-Location-For-Add
InstanceOf: BCLocation
Description: "Example of a Location."
//* id = "IFC.00147422.BC.PRS"
* identifier = Example-Identifier-FACID-22
* name = "General Hospital"
* name.extension[period].valuePeriod.start = "2000-01-01"
* telecom[0].system = #fax
* telecom[0].period.start = "1982-03-04T00:00:00-07:00"
* telecom[0].value = "55555555551"
* telecom[0].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #BC
* telecom[1].system = #fax
* telecom[1].period.start = "1981-04-04T00:00:00-07:00"
* telecom[1].value = "55555555555"
* telecom[1].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[1].extension[commPurposeExtension].valueCodeableConcept.coding.code = #HC
* telecom[2].system = #url
* telecom[2].period.start = "1991-01-01T00:00:00-07:00"
* telecom[2].value = "ftp://someftp.com"
* telecom[2].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[2].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[2].extension[commPurposeExtension].valueCodeableConcept.coding.code = #MC
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-mailing-address-extension"
* extension[=].valueAddress = Example-Address-Fac
//* address = Example-Address-Fac
//* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-community-health-service-area-extension"
//* extension[=].valueCodeableConcept.text = "Langford/Highlands"

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

