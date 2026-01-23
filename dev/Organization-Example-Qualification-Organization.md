# Example-Qualification-Organization - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Qualification-Organization**

## Example Organization: Example-Qualification-Organization

Profile: [BCOrganization](StructureDefinition-bc-organization.md)

**name**: CREDENTIAL_CREDENTIALGRANTINGINSTTXT

**address**: CALGARY AB CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Example-Qualification-Organization",
  "meta" : {
    "profile" : [
      "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"
    ]
  },
  "name" : "CREDENTIAL_CREDENTIALGRANTINGINSTTXT",
  "address" : [
    {
      "city" : "CALGARY",
      "state" : "AB",
      "country" : "CA"
    }
  ]
}

```
