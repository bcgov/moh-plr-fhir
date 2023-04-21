Profile: BCCatalogueService
Parent: HealthcareService
Id: bc-catalogue-service
Description: "Definition of services for the BC services catalogue."
* category MS 
* category = https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system#catalogue
* name  MS
* comment MS
* extraDetails MS
* type 1..* MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-HealthcareService.offeredIn named offeredIn 0..* MS

Profile: BCClinicalService
Parent: HealthcareService
Id: bc-clinic-service
Description: "Profile that describes services that a clinic provides. A instance of BC Healthcare service, linked to a clinic. "
* providedBy 1..1 MS
* providedBy only Reference(BCEnhancedOrganization)
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-HealthcareService.offeredIn named offeredIn 1..* MS
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


// from R5
//* contact 0..0 MS
//* availability 0..0 MS

Profile: BCEnhancedOrganization
Parent: Organization
Id: bc-enhanced-organization
Description: "PLR Enhancement to the Organization resource"
* identifier 0..* MS
* active MS
* type MS
* name 1..1 MS
* telecom MS
* address MS
* contact MS
  * purpose MS
  * name MS
  * telecom MS
  * address MS
* extension contains OwnerNameExtension named ownerName 0..1 MS

Extension: OwnerNameExtension
Id: bc-enhanced-owner-name-extension
Description: "Represents the name of the business that owns/runs the clinic."
* value[x] only string
* value[x] 1..1 MS