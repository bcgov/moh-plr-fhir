Instance: Example-Query-Response-Bundle-with-Individual-Provider
InstanceOf: Bundle
Description: "An example search response bundle with Individual Provider."
* type = #searchset
* timestamp = "2022-02-02T13:23:13.000-08:00"
* total = 1
* link.relation = "self"
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC32/$entityQuery"
* entry[0].fullUrl = "urn:uuid:7bf3d69a-482a-472e-9003-2ade5e0ccd11"
* entry[0].resource = Example-OperationOutcome-7049
* entry[0].search.mode = #outcome
* entry[1].fullUrl = "urn:uuid:11e1d315-0edf-49f0-b01c-0b42da4c97a6"
* entry[1].search.mode = #match
* entry[1].resource = Example-Individual-Provider-Bundle

Instance: Example-Credential-Granting-Institution
InstanceOf: BCOrganization
Description: "Example of an credential granting institution."
* name = "University of Calgary"
* address.city = "CALGARY"
* address.state = "AB"
* address.country = "CA"

Instance: Example-Query-Response-Bundle-with-Organizational-Provider
InstanceOf: Bundle
Description: "An example search response bundle with Organizational Provider."
* type = #searchset
* timestamp = "2022-02-02T13:23:13.000-08:00"
* total = 1
* link.relation = "self"
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Organization/IPC.00000033.BC.PRS/$entityQuery"
* entry[0].fullUrl = "urn:uuid:7bf3d69a-482a-472e-9003-2ade5e0ccd11"
* entry[0].resource = Example-OperationOutcome-7049
* entry[0].search.mode = #outcome
* entry[1].fullUrl = "urn:uuid:f8209691-97e9-4987-93a7-9b091cc659b8"
* entry[1].search.mode = #match
* entry[1].resource = Example-Organizational-Provider-Bundle

Instance: Example-Individual-Provider-Bundle
InstanceOf: BCPractitionerBundle
Description: "An example of a Provider Bundle, i.e. A Practitioner and PractitionerRole in a Bundle that represents a PLR Individual Provider."
* type = #collection
* timestamp = "2022-02-02T13:23:13.000-08:00"
* entry[Practitioner].fullUrl = "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
* entry[0].resource = Example-Practitioner
* entry[1].resource = Example-PractitionerRole-1-Role-FromPractitioner
* entry[1].fullUrl = "urn:uuid:0ae7755c-42cd-4583-83c6-8a4fd7a7d05c"
* entry[2].resource = Example-PractitionerRole-2-OrgReference-FromPractitioner
* entry[2].fullUrl = "urn:uuid:3d857c66-d80f-4c27-9669-8a9690817d03"
* entry[3].resource = Example-PractitionerRole-3-LocReference-FromPractitioner
* entry[3].fullUrl = "urn:uuid:c04b2e7e-f507-4194-a301-844b691e49f5"

Instance: Example-Organizational-Provider-Bundle
InstanceOf: BCOrganizationBundle
Description: "An example of a Provider Bundle, i.e. A Organization and PractitionerRole and OrganizationAffiliation in a Bundle that represents a PLR Organizational Provider."
* type = #collection
* timestamp = "2022-02-02T13:23:13.000-08:00"
* entry[Organization].fullUrl = "urn:uuid:f0e4e1ca-6bc7-4b8f-839b-1d715856a04f"
* entry[0].resource = Example-Organization
* entry[1].resource = Example-PractitionerRole-4-PracReference-FromOrg
* entry[1].fullUrl = "urn:uuid:0ae7755c-42cd-4583-83c6-8a4fd7a7d05c"
* entry[2].resource = Example-OrganizationAffiliation-1-OrgReference-FromOrg
* entry[2].fullUrl = "urn:uuid:3d857c66-d80f-4c27-9669-8a9690817d03"
* entry[3].resource = Example-OrganizationAffiliation-2-LocReference-FromOrg
* entry[3].fullUrl = "urn:uuid:c04b2e7e-f507-4194-a301-844b691e49f5"

