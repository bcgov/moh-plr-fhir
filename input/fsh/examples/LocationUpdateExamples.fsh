Instance: Example-Request-Update-Location
InstanceOf: Parameters
Description: "Example Parameters to update a Location (aka Facility)."
* parameter[+].name = "messageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:01-08:00"
* parameter[+].name = "maintain"
* parameter[=].resource = Example-UpdateLocationWithLinks-Bundle

Instance: Example-UpdateLocationWithLinks-Bundle
InstanceOf: BCLocationBundle
Description: "An example of bundle that is updating a location."
* type = #collection
* entry[0].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Location/IFC.00147422.BC.PRS"
* entry[0].resource = Example-Location-For-Update
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.1182.PRS"
* entry[=].resource = Example-OrganizationAffiliation-Loc1-U
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.1142.PRS"
* entry[=].resource = Example-OrganizationAffiliation-Loc2-U
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.1125.PRS"
* entry[=].resource = Example-PractitionerRole-Loc3-U

Instance: Example-Location-For-Update
InstanceOf: BCLocation
Description: "Example of a Location for update."
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension"
* extension[=].extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"
* extension[=].extension[=].valuePeriod.start = "2008-01-01"
* extension[=].extension[+] = Example-ERC-Change
//* extension[=].extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"
//* extension[=].extension[=].valueIdentifier.assigner.display = "MOH"
* id = "IFC.00147422.BC.PRS"
* identifier[+] = Example-Identifier-IFC-147422-U
* name = "General Hospital"
* name.extension[period].valuePeriod.start = "2000-01-01"
* name.extension[endReason] = Example-ERC-Change
* alias = "Long name or alias or description"
* telecom[0].system = #fax
* telecom[0].period.start = "1982-03-04T00:00:00-07:00"
* telecom[0].value = "55555555551"
* telecom[0].extension[commPurposeExtension].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-communication-purpose-code-extension"
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.system = $PLRCommPurpose
* telecom[0].extension[commPurposeExtension].valueCodeableConcept.coding.code = #FC
* telecom[0].extension[endReason] = Example-ERC-Change
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension"
* extension[=].valueAddress = Example-Address-Fac-U
* address = Example-Address-Fac-Civic

Instance: Example-Identifier-IFC-147422
InstanceOf: Identifier
Description: "Identifier example for IFC."
Usage: #inline
* system = $System_IFC
* value = "IFC.00147422.BC.PRS"
* period.start = "2000-01-01"


Instance: Example-Identifier-IFC-147422-U
InstanceOf: Identifier
Description: "Identifier example for IFC."
Usage: #inline
* system = $System_IFC
* value = "IFC.00147422.BC.PRS"
* period.start = "2008-01-01"
* extension[+] = Example-ERC-Change

Instance: Example-Address-Fac-Civic
InstanceOf: BCAddress
Description: "Address example."
Usage: #inline
//* type = #physical
* line[0] = "1000 DOUGLAS ST"
* city = "LANGFORD"
//* postalCode = "V6P7B8"
* state = "BC"
* country = "CA"
* period.start = "2000-01-01"

Instance: Example-Address-Fac-U
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
* period.start = "2008-01-01"
* extension[+] = Example-ERC-Change

Instance: Example-OrganizationAffiliation-Loc1-U
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Location relationship."
* id = "RELN.1182.PRS"
* organization.identifier.system = $System_IPC
* organization.identifier.value = "IPC.70007000.PRS.BC"
* organization.identifier.period.start = "2000-01-01"
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #OPERATES
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC-147422
* extension[+] = Example-ERC-Change

Instance: Example-OrganizationAffiliation-Loc2-U
InstanceOf: BCOrganizationAffiliation
Description: "Example of the OrganizationAffiliation for Organization to Location relationship."
* id = "RELN.1142.PRS"
* organization.identifier.system = $System_IPC
* organization.identifier.value = "IPC.90009000.PRS.BC"
* organization.identifier.period.start = "2000-01-01"
* code.coding.system = $PLRLocationRelationshipType
* code.coding.code = #OWNS
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC-147422
* extension[+] = Example-ERC-Change

Instance: Example-PractitionerRole-Loc3-U
InstanceOf: BCRoleRelationships
Description: "Example of the PractitionerRole for Practitioner to Location relationship."
* id = "RELN.1125.PRS"
* practitioner.identifier.system = $System_IPC
* practitioner.identifier.value = "IPC.80008000.PRS.BC"
* practitioner.identifier.period.start = "2000-01-01"
* period.start = "2000-01-01"
* location.identifier = Example-Identifier-IFC-147422
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension"
* extension[=].valueCodeableConcept.coding.system = $PLRLocationRelationshipType
* extension[=].valueCodeableConcept.coding.code = #PRACTICES_AT
* extension[+] = Example-ERC-Change

Instance: Example-Identifier-FACID-22-U
InstanceOf: Identifier
Description: "Identifier example for Facility ID."
Usage: #inline
* system = $System_FACID
* value = "22"
* period.start = "2000-01-01"
* extension[+] = Example-ERC-Change

