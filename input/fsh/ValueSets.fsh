ValueSet: LanguageVS
Title: "BC Language Value Set"
Id: bc-language-value-set
Description: "BC Language value set."
* codes from system $PLRLanguage
* ^experimental = false

ValueSet: ExpertiseVS
Title: "BC Expertise Value Set"
Id: bc-expertise-value-set
Description: "BC Expertise value set."
* codes from system $SCPQual
* ^experimental = false

CodeSystem: PractitionerRoleCS
Title: "BC-Specific Practitioner Role Codes"
Id: bc-practitioner-role-code-system
Description: "BC-Specific codes for practitioner roles."
* ^caseSensitive = true
* #org "org" "The organization role."
* #OOP-MD "OOP-MD" "Out Of Province MD"
* ^experimental = false
// TODO add the other OOP role types

ValueSet: PractitionerRoleVS
Title: "Practitioner Role Code Value Set"
Id: bc-practitioner-role-value-set
Description: "BC Practitioner Role Codes."
* codes from system $SCPType
* codes from system PractitionerRoleCS
* ^experimental = false

CodeSystem: LicenseStatusCS
Title: "BC License Status Codes"
Id: bc-license-status-code-system
Description: "BC specific license status code system."
* ^caseSensitive = true
* #unknown "unknown" "Unknown"
* #inactive "inactive" "Inactive"
* ^experimental = false

ValueSet: LicenseStatusVS
Title: "BC License Status Value Set"
Id: bc-license-status-value-set
Description: "BC specific license status value set."
* codes from system LicenseStatusCS
* codes from system $RoleStatus
* ^experimental = false

ValueSet: LicenseReasonVS
Title: "BC License Status Reason Value Set"
Id: bc-license-status-reason-value-set
Description: "BC specific license status reason value set."
* codes from system $PLRStatusReason
* ^experimental = false

ValueSet: PracQualificationVS
Title: "BC Practitioner QUalification Value Set"
Id: bc-qualification-value-set
Description: "BC specific qualification value set."
* codes from system $SCPQual
* ^experimental = false
