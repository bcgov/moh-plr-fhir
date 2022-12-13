Instance: Example-Response-Query-Practitioner-Bundle
InstanceOf: Bundle
Description: "An example search response bundle with Individual Provider."
* type = #searchset
* timestamp = "2022-02-02T13:23:13.000-08:00"
* total = 1
* link.relation = "self"
* link.url = "https://plresb.hlth.gov.bc.ca/HSA-web/fhir-rs/Practitioner/IPC32/$entityQuery"
* entry[+].fullUrl = "urn:uuid:7bf3d69a-482a-472e-9003-2ade5e0ccd11"
* entry[=].resource = Example-OperationOutcome-7049
* entry[=].search.mode = #outcome
* entry[+].fullUrl = "urn:uuid:11e1d315-0edf-49f0-b01c-0b42da4c97a6"
* entry[=].search.mode = #match
* entry[=].resource = Example-Individual-Provider-Bundle

Instance: Example-Credential-Granting-Institution
InstanceOf: BCOrganization
Description: "Example of an credential granting institution."
* name = "University of Calgary"
* address.city = "CALGARY"
* address.state = "AB"
* address.country = "CA"

Instance: Example-Response-Query-Organization-Bundle
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
* entry[+].resource = Example-Practitioner
* entry[+].resource = Example-PractitionerRole-1-Role-FromPractitioner
* entry[=].fullUrl = "urn:uuid:0ae7755c-42cd-4583-83c6-8a4fd7a7d05c"
* entry[+].resource = Example-PractitionerRole-2-OrgRef-FromPractitioner
* entry[=].fullUrl = "urn:uuid:3d857c66-d80f-4c27-9669-8a9690817d03"
* entry[+].resource = Example-PractitionerRole-3-LocRef-FromPractitioner
* entry[=].fullUrl = "urn:uuid:c04b2e7e-f507-4194-a301-844b691e49f5"

Instance: Example-Organizational-Provider-Bundle
InstanceOf: BCOrganizationBundle
Description: "An example of a Provider Bundle, i.e. A Organization and PractitionerRole and OrganizationAffiliation in a Bundle that represents a PLR Organizational Provider."
* type = #collection
* timestamp = "2022-02-02T13:23:13.000-08:00"
* entry[+].fullUrl = "urn:uuid:e24cfa57-5e07-4e5b-b229-0e65c74de7bf"
* entry[=].resource = Example-Organization-2
* entry[+].resource = Example-PractitionerRole-4-PracRef-FromOrg
* entry[=].fullUrl = "urn:uuid:0ae7755c-42cd-4583-83c6-8a4fd7a7d05c"
* entry[+].resource = Example-OrganizationAffiliation-3-OrgRef-FromOrg
* entry[=].fullUrl = "urn:uuid:3d857c66-d80f-4c27-9669-8a9690817d03"
* entry[+].resource = Example-OrganizationAffiliation-3-LocRef-FromOrg
* entry[=].fullUrl = "urn:uuid:c04b2e7e-f507-4194-a301-844b691e49f5"

