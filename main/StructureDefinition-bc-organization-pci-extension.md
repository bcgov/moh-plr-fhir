# Extension to indicate if the clinic is part of the Primary Care Initiative. - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extension to indicate if the clinic is part of the Primary Care Initiative.**

## Extension: Extension to indicate if the clinic is part of the Primary Care Initiative. 

| | |
| :--- | :--- |
| *Official URL*:http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:PrimaryCareInitiativeExtension |

Flag that indicates if (Primary Care) Clinic is part of the PrimaryCare Initiative. not all PC clinic are part of this initiative

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Extension for BC Organization to add Primary Care Clinic details](StructureDefinition-bc-organization-primary-care-clinic-extension.md)
* Examples for this Extension: [Kelowna PC Clinic](Organization-Example-Organization-PrimaryCare.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ca-bc.provider|current/StructureDefinition/bc-organization-pci-extension)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bc-organization-pci-extension.csv), [Excel](StructureDefinition-bc-organization-pci-extension.xlsx), [Schematron](StructureDefinition-bc-organization-pci-extension.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bc-organization-pci-extension",
  "url" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension",
  "version" : "1.0.0",
  "name" : "PrimaryCareInitiativeExtension",
  "title" : "Extension to indicate if the clinic is part of the Primary Care Initiative.",
  "status" : "active",
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Flag that indicates if (Primary Care) Clinic is part of the PrimaryCare Initiative. not all PC clinic are part of this initiative",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Extension"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension to indicate if the clinic is part of the Primary Care Initiative.",
      "definition" : "Flag that indicates if (Primary Care) Clinic is part of the PrimaryCare Initiative. not all PC clinic are part of this initiative"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:pciFlag",
      "path" : "Extension.extension",
      "sliceName" : "pciFlag",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:pciFlag.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pciFlag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pciFlag"
    },
    {
      "id" : "Extension.extension:pciFlag.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:identifier",
      "path" : "Extension.extension",
      "sliceName" : "identifier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:identifier.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:identifier.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "identifier"
    },
    {
      "id" : "Extension.extension:identifier.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:period",
      "path" : "Extension.extension",
      "sliceName" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:endReason",
      "path" : "Extension.extension",
      "sliceName" : "endReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:owner",
      "path" : "Extension.extension",
      "sliceName" : "owner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
