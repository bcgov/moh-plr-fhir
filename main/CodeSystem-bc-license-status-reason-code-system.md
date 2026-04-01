# Bc License Status Reason Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc License Status Reason Codes**

## CodeSystem: Bc License Status Reason Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LicenseStatusReasonCS |

 
Bc License Status Reason Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LicenseReasonVS](ValueSet-bc-license-status-reason-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-license-status-reason-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-license-status-reason-code-system",
  "version" : "1.0.0",
  "name" : "LicenseStatusReasonCS",
  "title" : "Bc License Status Reason Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-01T23:28:58+00:00",
  "publisher" : "BC Ministry of Health",
  "contact" : [{
    "name" : "BC Ministry of Health",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www2.gov.bc.ca/gov/content/governments/organizational-structure/ministries-organizations/ministries/health"
    }]
  }],
  "description" : "Bc License Status Reason Code System",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 31,
  "concept" : [{
    "code" : "ORG",
    "display" : "Organization Provider"
  },
  {
    "code" : "OOP",
    "display" : "Out of Province"
  },
  {
    "code" : "MEDSTUD",
    "display" : "Medical Student"
  },
  {
    "code" : "GS",
    "display" : "Good Standing"
  },
  {
    "code" : "HON",
    "display" : "Honorary"
  },
  {
    "code" : "INNONPRAC",
    "display" : "Initial Non Practicing"
  },
  {
    "code" : "MIS",
    "display" : "Missionary"
  },
  {
    "code" : "NR",
    "display" : "Non-resident"
  },
  {
    "code" : "OPEN",
    "display" : "Open"
  },
  {
    "code" : "PRAC",
    "display" : "Practising"
  },
  {
    "code" : "REM",
    "display" : "Removed"
  },
  {
    "code" : "RESDISC",
    "display" : "Resigned - disciplinary action"
  },
  {
    "code" : "SPE",
    "display" : "Special Registry"
  },
  {
    "code" : "TEMPPER",
    "display" : "Temporary Permit"
  },
  {
    "code" : "TI",
    "display" : "Temporary Inactive"
  },
  {
    "code" : "TSF",
    "display" : "Transfer"
  },
  {
    "code" : "UNK",
    "display" : "Unknown"
  },
  {
    "code" : "VW",
    "display" : "Voluntary Withdrawal"
  },
  {
    "code" : "ASSOC",
    "display" : "Associate"
  },
  {
    "code" : "AU",
    "display" : "Address Unknown"
  },
  {
    "code" : "CLOSED",
    "display" : "Closed"
  },
  {
    "code" : "NONPRAC",
    "display" : "Non Practicing"
  },
  {
    "code" : "LAP",
    "display" : "License Lapsed on Request"
  },
  {
    "code" : "LTP",
    "display" : "Left the Province"
  },
  {
    "code" : "NONPAY",
    "display" : "Non Payment of Fee"
  },
  {
    "code" : "RET",
    "display" : "Retired"
  },
  {
    "code" : "DEC",
    "display" : "Deceased"
  },
  {
    "code" : "ERSRES",
    "display" : "Erased by Resolution"
  },
  {
    "code" : "DEN",
    "display" : "Licensed Denied"
  },
  {
    "code" : "DEF",
    "display" : "Deferred"
  },
  {
    "code" : "SUS",
    "display" : "Suspended"
  }]
}

```
