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

//CodeSystem: PractitionerRoleCS
//Title: "BC-Specific Practitioner Role Codes"
//Id: bc-practitioner-role-code-system
//Description: "BC-Specific codes for practitioner roles."
//* ^caseSensitive = true
//* #ORG "ORG" "The organization role."
//* #OOP-MD "OOP-MD" "Out Of Province MD"
//* ^experimental = false
//* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-practitioner-role-code-system"

// TODO add the other OOP role types

ValueSet: PractitionerRoleVS
Title: "Practitioner Role Code Value Set"
Id: bc-practitioner-role-value-set
Description: "BC Practitioner Role Codes."
* codes from system $SCPType
* codes from system $PLRRoleCode
* ^experimental = false
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-practitioner-role-value-set"

//CodeSystem: LicenseStatusCS
//Title: "BC License Status Codes"
//Id: bc-license-status-code-system
//Description: "BC specific license status code system."
//* ^caseSensitive = true
//* #unknown "unknown" "Unknown"
//* #inactive "inactive" "Inactive"
//* ^experimental = false
//* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-code-system"

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

//CodeSystem: LicenseStatusClassCS
//Title: "BC License Status Class Code System"
//Id: bc-license-status-class-code-system
//Description: "BC specific license status class code system."
//* #LIC "LIC" "Licensure"
//* #AE "AE" "Assigned Entity"
//* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-class-code-system"
//* ^experimental = false

ValueSet: LicenseStatusClassVS
Title: "BC License Status Class Value Set"
Id: bc-license-status-class-value-set
Description: "BC specific license status class value set."
* ^url = "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/ValueSet/bc-license-status-class-value-set"
* ^experimental = false
* codes from system $PLRStatusClass
