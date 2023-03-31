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
