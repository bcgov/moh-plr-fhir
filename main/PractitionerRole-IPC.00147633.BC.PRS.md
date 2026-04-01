# Example-PractitionerRole-1-Role-FromPractitioner-Update-Response - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-PractitionerRole-1-Role-FromPractitioner-Update-Response**

## Example PractitionerRole: Example-PractitionerRole-1-Role-FromPractitioner-Update-Response

Profile: [BCPractitionerRole](StructureDefinition-bc-practitioner-role.md)

**practitioner**: [Practitioner GivenName FamilyName (official)](Bundle-Example-AddPractitioner-Bundle.md#urn-uuid-67b11c73-c2ee-474f-ab64-56b863a1cc87)

**code**: MD



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "IPC.00147633.BC.PRS",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-practitioner-role"]
  },
  "practitioner" : {
    "reference" : "urn:uuid:67b11c73-c2ee-474f-ab64-56b863a1cc87"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://fhir.infoway-inforoute.ca/CodeSystem/scptype",
      "code" : "MD"
    }]
  }]
}

```
