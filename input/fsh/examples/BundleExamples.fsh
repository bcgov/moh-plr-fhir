Instance: Example-AddOrganization-Bundle
InstanceOf: BCOrganizationBundle
Description: "Example of a Bundle of resources that are needed to create an Organization."
* type = #collection
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Organization-1

Instance: Example-UpdateOrganization-Bundle-Response
InstanceOf: BCOrganizationBundle
Description: "Example of a Bundle of resources representing a Organization Response."
* type = #collection
//* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
//* entry[=].resource = Example-OperationOutcome-MaintainSuccess
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00147436.BC.PRS"
* entry[=].resource = Example-Organization-Response

Instance: Example-UpdateOrganization-Bundle
InstanceOf: BCOrganizationBundle
Description: "Example of a Bundle of resources that are needed to update an Organization."
* type = #collection
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00147434.BC.PRS"
* entry[=].resource = Example-Organization-1-Update
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.182.PRS"
* entry[=].resource = Example-OrganizationAffiliation-LocRef-FromOrg-2
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.181.PRS"
* entry[=].resource = Example-OrganizationAffiliation-OrgRef-FromOrg-2
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.193.PRS"
* entry[=].resource =  Example-PractitionerRole-OrgRef-FromPractitioner-2

Instance: Example-AddLocation-Bundle
InstanceOf: BCLocationBundle
Description: "An example of bundle that is adding a location."
* type = #collection
* entry[0].fullUrl = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* entry[0].resource = Example-Location

Instance: Example-AddPractitioner-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when requesting a practitioner create."
* type = #collection
* entry[0].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-AddPractitioner-Practitioner
* entry[1].fullUrl = "urn:uuid:f431631b-ed68-4716-80be-cca6904309fc"
* entry[1].resource = Example-PractitionerRole-Role-FromPrac-CPSID

Instance: Example-Batch-Bundle
InstanceOf: BCBatchBundle
Description: "An example of a Batch Bundle that contains one each of a Practitioner bundle, Organization bundle, and a Location bundle."
* type = #batch
* entry[0].fullUrl = "urn:uuid:afe28d6d-4db2-49aa-96af-c115cdfc108c"
* entry[0].resource = Example-AddPractitioner-Bundle
* entry[0].request.url = "https://plr.hlth.gov.bc.ca/HSA-web/fhir-rs/$maintain"
* entry[1].fullUrl = "urn:uuid:ddab2257-0829-4e5d-a5b7-b6c24dcdb7b8"
* entry[1].resource = Example-AddOrganization-Bundle
* entry[1].request.url = "https://plr.hlth.gov.bc.ca/HSA-web/fhir-rs/$maintain"
* entry[2].fullUrl = "urn:uuid:09494507-e0a8-4cd4-9a25-a42822a2f552"
* entry[2].resource = Example-AddLocation-Bundle
* entry[2].request.url = "https://plr.hlth.gov.bc.ca/HSA-web/fhir-rs/$maintain"

Instance: Example-UpdatePractitioner-LicenseStatus-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle to update an Indivivdual Provider's License Status."
* type = #collection
* entry[0].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00763481.BC.PRS"
* entry[0].resource = Example-Practitioner-UpdateLicense
* entry[1].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00763481.BC.PRS"
* entry[1].resource = Example-PractitionerRole-1-Role-Update

Instance: Example-UpdatePractitioner-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle to update an Indivivdual Provider."
* type = #collection
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00147433.BC.PRS"
* entry[=].resource = Example-Practitioner-Update
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00147433.BC.PRS"
* entry[=].resource = Example-PractitionerRole-Role-Update-Specialty
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.173.PRS"
* entry[=].resource = Example-PractitionerRole-OrgRef-FromPrac-1-Update

Instance: Example-AddPractitioner-Bundle-Response
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when responding to a practitioner create."
* type = #collection
//* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
//* entry[=].resource = Example-OperationOutcome-MaintainSuccess
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00147622.BC.PRS"
* entry[=].resource = Example-Practitioner-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00147622.BC.PRS"
* entry[=].resource = Example-PractitionerRole-1-Role-FromPractitioner-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.124.PRS"
* entry[=].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.125.PRS"
* entry[=].resource = Example-PractitionerRole-3-LocRef-FromPractitioner-Response

Instance: Example-UpdatePractitioner-Bundle-Response
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when responding to a practitioner update."
* type = #collection
//* entry[+].fullUrl = "urn:uuid:3abd58f7-f226-4358-bdfd-2bb64bc93552"
//* entry[=].resource = Example-OperationOutcome-MaintainSuccess
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00147622.BC.PRS"
* entry[=].resource = Example-Practitioner-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00147622.BC.PRS"
* entry[=].resource = Example-PractitionerRole-1-Role-FromPractitioner-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.124.PRS"
* entry[=].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.125.PRS"
* entry[=].resource = Example-PractitionerRole-3-LocRef-FromPractitioner-Response

Instance: Example-DistributePractitioner-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when distributing a Practitioner."
* type = #collection
* entry[0].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00147622.BC.PRS"
* entry[0].resource = Example-Practitioner-Response
* entry[1].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00147622.BC.PRS"
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner-Response
* entry[2].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.153.PRS"
* entry[2].resource = Example-PractitionerRole-5-OrgRef-FromPractitioner
* entry[3].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.125.PRS"
* entry[3].resource = Example-PractitionerRole-3-LocRef-FromPractitioner-Response

Instance: Example-DistributeOrganization-Bundle
InstanceOf: BCOrganizationBundle
Description: "Example of a bundle of resources sent when distributing a Organization."
* type = #collection
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00147436.BC.PRS"
* entry[=].resource = Example-Organization-Response
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.123.PRS"
* entry[=].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner
* entry[+].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/OrganizationAffiliation/RELN.132.PRS"
* entry[=].resource = Example-OrganizationAffiliation-2-LocRef-FromOrg


Instance: Example-DistributePractitioner-Bundle-forTesting
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when distributing a Practitioner."
* type = #collection
* entry[0].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC.00147622.BC.PRS"
* entry[0].resource = Example-Practitioner-Response-test
* entry[1].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/IPC.00147622.BC.PRS"
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner-Response-test
* entry[2].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.153.PRS"
* entry[2].resource = Example-PractitionerRole-5-OrgRef-FromPractitioner
* entry[3].fullUrl = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/PractitionerRole/RELN.125.PRS"
* entry[3].resource = Example-PractitionerRole-3-LocRef-FromPractitioner-Response

Instance: Example-Practitioner-Response-test
InstanceOf: BCPractitioner
Description: "Example of generic Practitioner response."
* extension[+] = Example-Demographics-1
* extension[+] = Example-OC-MOH
* gender = #male
* birthDate = "1934-01-02"
* birthDate.extension[birthTime].valueDateTime = "1951-11-12T00:00:01-06:00"
* extension[+] = Example-Demographics-2
* id = "IPC.00147699.BC.PRS"
* identifier[+] = Example-Identifier-IPC-Ind-Response-147622
* identifier[+] = Example-Identifier-CPN-Response-147422
* identifier[+] = Example-Identifier-CPSID-Response
* name = Example-Name-Official-Response

Instance: Example-PractitionerRole-1-Role-FromPractitioner-Response-test
InstanceOf: BCPractitionerRole
Description: "Example of the PractitionerRole with Speciality."
* id = "IPC.00147699.BC.PRS"
//* practitioner.identifier = Example-Identifier-IPC-Ind-Response-147622
* practitioner.identifier = Example-Identifier-CPN-Response-147422
//* practitioner.identifier = Example-Identifier-IPC-Ind-147422
//* organization.display = "BC"
* code = $SCPType#MD
* specialty = Example-Specialty-Response


