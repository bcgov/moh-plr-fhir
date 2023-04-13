Instance: Example-Location
InstanceOf: BCLocation
Description: "Example of a Location."
* id = "IFC.00147422.BC.PRS"
* identifier = Example-Identifier-IFC-47422
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
* address = Example-Address-Valid
* extension[+].url = "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-community-health-service-area-extension"
* extension[=].valueCodeableConcept.text = "Langford/Highlands"

