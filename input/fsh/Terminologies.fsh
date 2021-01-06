ValueSet: PractitionerStatusVS
Description: "The set of statuses for Practitioners in the BC Provider Registry Project"
Title: "BC Provider Registry Practitioner Statuses"
* include codes from system http://terminology.hl7.org/CodeSystem/v3-RoleStatus

CodeSystem: ValidFlagCS
Description: "An indication of the validity of a data element"
Title: "BC Valid Flag Extension CodeSystem"
* #valid
* #invalid
* #unknown

ValueSet: ValidFlagVS
Description: "An indication of the validity of a data element"
Title: "BC Valid Flag Extension ValueSet"
* include codes from system ValidFlagCS

