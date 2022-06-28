ValueSet: ExpertiseVS
Title: "BC Expertise Value Set"
Id: bc-expertise-value-set
Description: "BC Expertise value set."
* codes from system $PracSpecialty

CodeSystem: PractitionerRoleCS
Title: "BC-Specific Practitioner Role Codes"
Id: bc-practitioner-role-code-system
Description: "BC-Specific codes for practitioner roles"
* ^caseSensitive = true
* #org "org" "The organization role."

ValueSet: PractitionerRoleVS
Title: "Practitioner Role Code Value Set"
Id: bc-practitioner-role-value-set
Description: "BC Practitioner Role Codes"
* codes from system $SCPType
* codes from system PractitionerRoleCS
