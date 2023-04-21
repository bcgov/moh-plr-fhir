Profile: BCEnhancedPractitioner
Parent: Practitioner
Id: bc-enhanced-practitioner
Description: "PLR Enhancement to the Practitioner resource"
* identifier 1..* MS
* active MS
* name 1..* MS
* telecom MS
* address MS
* gender MS
* birthDate MS
* qualification MS
* qualification.identifier MS
* qualification.code MS
* qualification.period MS
* qualification.issuer MS
* communication MS
* communication.coding from LanguageVS (required)

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

Profile: BCEnhancedLocation
Parent: Location
Id: bc-enhanced-location
Description: "PLR Enhancement to the Location resource"
* identifier 1..* MS
* status MS
* name 1..1 MS
* telecom MS
* address 1..1 MS
* position MS
  * longitude MS
  * latitude MS
* extension contains 
	CommunityHealthServiceArea named serviceArea 0..1 MS and
	MailingAddress named mailingAddress 0..1 MS

Profile: BCEnhancedPractitionerClinic
Parent: PractitionerRole
Id: bc-enhanced-practitioner-clinic
Description: "Describes the relationship between practitioners, clinics, and the locations"
* period 1..1 MS
* practitioner 1..1 MS
* practitioner only Reference(BCEnhancedPractitioner)
* organization MS
* organization only Reference(BCEnhancedOrganization)
* code MS
* location MS
* location only Reference(BCEnhancedLocation)
* healthcareService MS
* healthcareService only Reference(BCClinicalService)
  * extension contains ServicePeriodExtension named servicePeriod 0..1 MS

Extension: ServicePeriodExtension
Id: bc-enhanced-service-period-extension
Description: "Represents the period that a service is available at a clinic or location"
* value[x] only Period
* value[x] 1..1 MS

Profile: BCCareTeam
Parent: CareTeam
Id: bc-careteam
Description: "PLR Enhancement representing a collection of practitioners that provide services"
* identifier MS
* status 1..1 MS
* category 1..* MS
* name 1..1 MS
* participant MS
  * role 1..1 MS
  * member 1..1 MS
  * member only Reference(BCEnhancedPractitioner)

Profile: BCPrimaryNetwork
Parent: CareTeam
Id: bc-primary-network
Description: "PLR Enhancement representing a primary care network of practitioners that provide services"
* identifier MS
* status 1..1 MS
* category 1..* MS
* name 1..1 MS
* participant MS
  * role 1..1 MS
  * member 1..1 MS
  * member only Reference(BCEnhancedPractitioner)

