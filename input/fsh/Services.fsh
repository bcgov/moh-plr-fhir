Profile: BCCatalogueService
Parent: HealthcareService
Id: bc-catalogue-service
Description: "Definition of services for the BC services catalogue."
* category 0..1 MS
//* category only "catalogue"
* type 1..* MS
* telecom 0..0 MS
* photo 0..0 MS
* providedBy 0..0 MS
* location 0..0 MS
* coverageArea 0..0 MS
* communication 0..0 MS
* availableTime 0..0 MS
* notAvailable 0..0 MS
* extension contains HealthcareServiceExtension named offeredIn 0..* MS

Profile: BCClinicService
Parent: HealthcareService
Id: bc-clinic-service
Description: "Profile that describes services that a clinic provides. A instance of BC Healthcare service, linked to a clinic. "
* providedBy 1..1 MS
* providedBy only Reference(BCEnhancedOrganization)
* extension contains HealthcareServiceExtension named offeredIn 1..* MS
* category MS
//* category only "clinic"
* type 1..* MS
* coverageArea MS
* availableTime MS
  * daysOfWeek MS
  * allDay MS
  * availableStartTime MS
  * availableEndTime MS
* notAvailable MS
  * during MS

Extension: HealthcareServiceExtension
Id: bc-healthcare-service-extension
Title: "Extension to add R5 attributes from HealthcareService"
Description: "Add R5 attributes from HealthcareService especially offeredIn"
* extension contains 
	    offeredIn 0..* MS
* extension[offeredIn].value[x] only Reference(BCCatalogueService)

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