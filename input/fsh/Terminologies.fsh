Alias: $StatusVS = https://fhir.infoway-inforoute.ca/ValueSet/rolestatusnormal
Alias: $RoleStatus = http://terminology.hl7.org/CodeSystem/v3-RoleStatus
Alias: $RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $LocationType = https://fhir.infoway-inforoute.ca/ValueSet/servicedeliverylocationroletype
Alias: $PracRoleCode = https://fhir.infoway-inforoute.ca/ValueSet/healthcareproviderroletype
Alias: $SCPType = https://fhir.infoway-inforoute.ca/CodeSystem/scptype
Alias: $PracSpecialty = https://fhir.infoway-inforoute.ca/ValueSet/practitionerspecialty
Alias: $PracQualification = https://fhir.infoway-inforoute.ca/ValueSet/qualifiedroletype
Alias: $SCPQual = https://fhir.infoway-inforoute.ca/CodeSystem/scpqual

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

