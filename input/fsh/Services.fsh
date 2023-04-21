Profile: BCCatalogueService
Parent: HealthcareService
Id: bc-catalogue-services
Description: "PLR Enhancement that describes services as they would be found in a catalogue."
* category MS
* category = https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system#catalogue
* name MS
* comment MS
* extraDetails MS
* type 1..* MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-HealthcareService.offeredIn named offeredIn 0..* MS

Profile: BCClinicalService
Parent: HealthcareService
Id: bc-clinical-services
Description: "PLR Enhancement that describes services that a clinic provides."
* providedBy 1..1 MS
* providedBy only Reference(BCEnhancedOrganization)
* category MS
* category = https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system#clinical
* name MS
* comment MS
* extraDetails MS
* type 1..* MS
* coverageArea MS
* availableTime MS
  * daysOfWeek MS
  * allDay MS
  * availableStartTime MS
  * availableEndTime MS
* notAvailable MS
  * during MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-HealthcareService.offeredIn named offeredIn 0..* MS
