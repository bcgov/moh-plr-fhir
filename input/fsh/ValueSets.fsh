ValueSet: LanguageVS
Title: "BC Language Value Set"
Id: bc-language-value-set
Description: "BC Language value set."
* codes from system $PLRLanguage
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-language-value-set"

ValueSet: ExpertiseVS
Title: "BC Expertise Value Set"
Id: bc-expertise-value-set
Description: "BC Expertise value set."
* codes from system $SCPQual
* codes from system $PLRExpertise
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-expertise-value-set"

ValueSet: PractitionerRoleVS
Title: "BC Practitioner Role Code Value Set"
Id: bc-practitioner-role-value-set
Description: "BC Practitioner Role Codes."
* codes from system $SCPType
* codes from system $PLRRoleCode
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-practitioner-role-value-set"

ValueSet: OrganizationRoleVS
Title: "BC Organization Role Code Value Set"
Id: bc-organization-role-value-set
Description: "BC Organization Role Codes."
* codes from system $PLROrganizationRoleCode
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-organization-role-value-set"

ValueSet: LicenseStatusVS
Title: "BC License Status Value Set"
Id: bc-license-status-value-set
Description: "BC specific license status value set."
* codes from system $PLRLicenseStatus
* codes from system $RoleStatus
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-value-set"

ValueSet: LicenseReasonVS
Title: "BC License Status Reason Value Set"
Id: bc-license-status-reason-value-set
Description: "BC specific license status reason value set."
* codes from system $PLRStatusReason
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-reason-value-set"

ValueSet: PracQualificationVS
Title: "BC Practitioner Qualification Value Set"
Id: bc-qualification-value-set
Description: "BC specific qualification value set."
* codes from system $SCPQual
* codes from system $PLRQulaificationCode
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-qualification-value-set"

ValueSet: LicenseStatusClassVS
Title: "BC License Status Class Value Set"
Id: bc-license-status-class-value-set
Description: "BC specific license status class value set."
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-class-value-set"
* ^experimental = false
* codes from system $PLRStatusClass

CodeSystem: ServiceTypeCS
Title: "BC Service type codes"
Id: bc-service-type-code-system
Description: "BC Service type Codes"
* ^caseSensitive = true
* #catalogue "catalogue" "BC Catalogue HealthCare Service"
* #clinical "clinical" "BC Clinical HealthCare Service"
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-service-type-code-system"

ValueSet: AddressValidationStatusVS
Title: "BC Address Validation Status Value Set"
Id: bc-address-validation-status-value-set
Description: "BC address validation status value set."
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-address-validation-status-value-set"
* ^experimental = false
* codes from system $PLRAddressValidationStatus

ValueSet: EndReasonVS
Title: "BC End Reason Value Set"
Id: bc-end-reason-value-set
Description: "BC end reason value set."
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-end-reason-value-set"
* ^experimental = false
* codes from system $PLREndReason

ValueSet: RelationshipTypeVS
Title: "BC Relationship Type Value Set"
Id: bc-relationship-type-value-set
Description: "BC relationship type value set."
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-relationship-type-value-set"
* ^experimental = false
* codes from system $PLRRelationshipType

ValueSet: CommunicationPurposeVS
Title: "BC Communication Purpose Value Set"
Id: bc-communication-purpose-value-set
Description: "BC communication purpose value set."
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-communication-purpose-value-set"
* ^experimental = false
* codes from system $PLRCommPurpose

