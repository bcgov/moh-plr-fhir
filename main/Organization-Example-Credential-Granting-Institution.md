# Example-Credential-Granting-Institution - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example-Credential-Granting-Institution**

## Example Organization: Example-Credential-Granting-Institution

Profile: [BCOrganization](StructureDefinition-bc-organization.md)

**name**: University of Calgary

**address**: CALGARY AB CA 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "Example-Credential-Granting-Institution",
  "meta" : {
    "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization"]
  },
  "name" : "University of Calgary",
  "address" : [{
    "city" : "CALGARY",
    "state" : "AB",
    "country" : "CA"
  }]
}

```
