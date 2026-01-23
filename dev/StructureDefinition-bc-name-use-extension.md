# BC Name Use Extension - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BC Name Use Extension**

## Extension: BC Name Use Extension 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:NameUseExtension |

Allows for use on a simple name string.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BCOrganization](StructureDefinition-bc-organization.md)
* Examples for this Extension: [Bundle/Example-AddOrganization-Bundle](Bundle-Example-AddOrganization-Bundle.md), [Bundle/Example-DistributeOrganization-Bundle](Bundle-Example-DistributeOrganization-Bundle.md), [Bundle/Example-GET-Organization-Response](Bundle-Example-GET-Organization-Response.md), [Bundle/Example-Organizational-Provider-Bundle](Bundle-Example-Organizational-Provider-Bundle.md)... Show 14 more, [Bundle/Example-Response-Query-Organization-Bundle](Bundle-Example-Response-Query-Organization-Bundle.md), [Bundle/Example-UpdateOrganization-Bundle-Response](Bundle-Example-UpdateOrganization-Bundle-Response.md), [Bundle/Example-UpdateOrganization-Bundle](Bundle-Example-UpdateOrganization-Bundle.md), [Kelowna Clinic](Organization-Example-Organization-1.md), [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md), [Kelowna Clinic](Organization-IPC.00047422.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147434.BC.PRS.md), [Kelowna Clinic](Organization-IPC.00147436.BC.PRS.md), [ABC Clinic](Organization-IPC.00147437.BC.PRS.md), [Parameters/Example-Request-Add-Organization](Parameters-Example-Request-Add-Organization.md), [Parameters/Example-Request-Distribution-Organization](Parameters-Example-Request-Distribution-Organization.md), [Parameters/Example-Request-Update-Organization](Parameters-Example-Request-Update-Organization.md), [Parameters/Example-Response-Add-Organization](Parameters-Example-Response-Add-Organization.md) and [Parameters/Example-Response-Update-Organization](Parameters-Example-Response-Update-Organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-name-use-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-name-use-extension.csv), [Excel](StructureDefinition-bc-name-use-extension.xlsx), [Schematron](StructureDefinition-bc-name-use-extension.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-name-use-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension",
  "version" : "1.0.0",
  "name" : "NameUseExtension",
  "title" : "BC Name Use Extension",
  "status" : "active",
  "date" : "2026-01-23T00:06:12+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [
    {
      "name" : "BC Ministry of Health",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
        }
      ]
    }
  ],
  "description" : "Allows for use on a simple name string.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CA",
          "display" : "Canada"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "string"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "BC Name Use Extension",
        "definition" : "Allows for use on a simple name string."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-name-use-extension"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "code"
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/name-use"
        }
      }
    ]
  }
}

```
