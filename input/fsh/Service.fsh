/*Profile: BCCatalogueService
Parent: HealthcareService
Id: bc-catalogue-service
Description: "PLR Enhancement that describes services as they would be found in a catalogue."
* ^status = #draft
* category MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing for a mandatory catalogue value."
* category contains Catalogue 1..1
* category[Catalogue] = https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system#catalogue
* name MS
* comment MS
* extraDetails MS
* type 1..* MS
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-HealthcareService.offeredIn named offeredIn 0..* MS

Profile: BCClinicalService
Parent: HealthcareService
Id: bc-clinical-service
Description: "PLR Enhancement that describes services that a clinic provides."
* ^status = #draft
* providedBy 1..1 MS
* providedBy only Reference(BCOrganization)
* category MS
* category MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^slicing.description = "Slicing for a mandatory clinical value."
* category contains Clinical 1..1
* category[Clinical] = https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system#clinical
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

Profile: BCCareTeam
Parent: CareTeam
Id: bc-careteam
Description: "PLR Enhancement representing a collection of practitioners that provide services. There is no active development planned around this in PLR for now."
* ^status = #draft
* identifier MS
* status 1..1 MS
* category 1..* MS
* name 1..1 MS
* participant MS
  * role 1..1 MS
  * member 1..1 MS
  * member only Reference(BCPractitioner)

Profile: BCPrimaryNetwork
Parent: CareTeam
Id: bc-primary-network
Description: "PLR Enhancement representing a primary care network of practitioners that provide services. There is no active development planned around this in PLR for now."
* ^status = #draft
* identifier MS
* status 1..1 MS
* category 1..* MS
* name 1..1 MS
* participant MS
  * role 1..1 MS
  * member 1..1 MS
  * member only Reference(BCPractitioner)*/
