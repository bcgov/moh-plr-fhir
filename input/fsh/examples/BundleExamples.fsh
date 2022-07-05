Instance: Example-AddOrganization-Bundle
InstanceOf: BCOrganizationBundle
Description: "Example of a Bundle of resources that are needed to create an Organization."
* type = #collection
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Organization-1
* entry[+].fullUrl = "urn:uuid:f41c4f5f-43eb-497c-8baa-e800fe3fe4fa"
* entry[=].resource = Example-OrganizationAffiliation-2-LocRef-FromOrg
* entry[+].fullUrl = "urn:uuid:efeb9931-b4b7-4caa-9682-cc0220043d1f"
* entry[=].resource = Example-OrganizationAffiliation-1-OrgRef-FromOrg
* entry[+].fullUrl = "ac8569d7-4ff1-405f-9b01-a4b71cf0770d"
* entry[=].resource = Example-PractitionerRole-2a-OrgRef-FromPractitioner

Instance: Example-AddLocation-Bundle
InstanceOf: BCLocationBundle
Description: "An example of bundle that is adding a location."
* type = #collection
* entry[0].fullUrl = "urn:uuid:18734433-5c7b-42c8-ade5-22bd2c82e4f2"
* entry[0].resource = Example-Location
* entry[1].fullUrl = "urn:uuuid:4d73bc14-4332-4acc-a057-0b2ee66c3d4d"
* entry[1].resource = Example-PractitionerRole-5-PracRef-FromLoc

Instance: Example-AddPractitioner-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when requesting a practitioner create."
* type = #collection
* entry[0].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-Practitioner
* entry[1].fullUrl = "urn:uuid:e46a70b4-d0b9-4770-8ff6-989f4f847dc6"
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner
* entry[2].fullUrl = "urn:uuid:e06c8673-ddf5-4190-ba1e-dd43923a66c7"
* entry[2].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner
* entry[3].fullUrl = "urn:uuid:529cd77a-8f57-4d2d-bf3d-38dc3c2c4ec9"
* entry[3].resource = Example-PractitionerRole-3-LocRef-FromPractitioner

Instance: Example-Batch-Bundle
InstanceOf: BCBatchBundle
Description: "An example of a Batch Bundle that contains one each of a Practitioner bundle, Organization bundle, and a Location bundle."
* type = #batch
* entry[0].fullUrl = "urn:uuid:afe28d6d-4db2-49aa-96af-c115cdfc108c"
* entry[0].resource = Example-AddPractitioner-Bundle
* entry[0].request.url = "http://plr.moh.bc.ca/fhir/Bundle"
* entry[1].fullUrl = "urn:uuid:ddab2257-0829-4e5d-a5b7-b6c24dcdb7b8"
* entry[1].resource = Example-AddOrganization-Bundle
* entry[1].request.url = "http://plr.moh.bc.ca/fhir/Bundle"
* entry[2].fullUrl = "urn:uuid:09494507-e0a8-4cd4-9a25-a42822a2f552"
* entry[2].resource = Example-AddLocation-Bundle
* entry[2].request.url = "http://plr.moh.bc.ca/fhir/Bundle"

Instance: Example-UpdatePractitioner-LicenseStatus-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle to update an Indivivdual Provider's License Status."
* type = #collection
* entry[0].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-Practitioner-UpdateLicense
* entry[1].fullUrl = "urn:uuid:e46a70b4-d0b9-4770-8ff6-989f4f847dc6"
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner-Update

Instance: Example-AddPractitioner-Bundle-Response
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when requesting a practitioner create."
* type = #collection
* entry[0].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-Practitioner-Response
* entry[1].fullUrl = "urn:uuid:e46a70b4-d0b9-4770-8ff6-989f4f847dc6"
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner-Response
* entry[2].fullUrl = "urn:uuid:e06c8673-ddf5-4190-ba1e-dd43923a66c7"
* entry[2].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner
* entry[3].fullUrl = "urn:uuid:529cd77a-8f57-4d2d-bf3d-38dc3c2c4ec9"
* entry[3].resource = Example-PractitionerRole-3-LocRef-FromPractitioner

Instance: Example-DistributePractitioner-Bundle
InstanceOf: BCPractitionerBundle
Description: "Example of a bundle of resources sent when distributing a Practitioner."
* type = #collection
* entry[0].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-Practitioner-Response
* entry[1].fullUrl = "urn:uuid:e46a70b4-d0b9-4770-8ff6-989f4f847dc6"
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner-Response
* entry[2].fullUrl = "urn:uuid:e06c8673-ddf5-4190-ba1e-dd43923a66c7"
* entry[2].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner
* entry[3].fullUrl = "urn:uuid:529cd77a-8f57-4d2d-bf3d-38dc3c2c4ec9"
* entry[3].resource = Example-PractitionerRole-3-LocRef-FromPractitioner

Instance: Example-DistributeOrganization-Bundle
InstanceOf: BCOrganizationBundle
Description: "Example of a bundle of resources sent when distributing a Organization."
* type = #collection
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Organization-Response
* entry[+].fullUrl = "urn:uuid:e06c8673-ddf5-4190-ba1e-dd43923a66c7"
* entry[=].resource = Example-PractitionerRole-2a-OrgRef-FromPractitioner
* entry[+].fullUrl = "urn:uuid:529cd77a-8f57-4d2d-bf3d-38dc3c2c4ec9"
* entry[=].resource = Example-OrganizationAffiliation-2-LocRef-FromOrg

