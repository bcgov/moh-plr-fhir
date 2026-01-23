# Bc Practitioner Role Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Practitioner Role Codes**

## CodeSystem: Bc Practitioner Role Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-practitioner-role-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:PractitionerRoleCS |

 
Bc Practitioner Role Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PractitionerRoleVS](ValueSet-bc-practitioner-role-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-practitioner-role-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-practitioner-role-code-system",
  "version" : "1.0.0",
  "name" : "PractitionerRoleCS",
  "title" : "Bc Practitioner Role Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Bc Practitioner Role Code System",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 65,
  "concept" : [
    {
      "code" : "PA",
      "display" : "Physician Assistant"
    },
    {
      "code" : "ITT",
      "display" : "Infant Transport Team"
    },
    {
      "code" : "EMA-FR",
      "display" : "First Responder"
    },
    {
      "code" : "ND",
      "display" : "Naturopathic Doctor"
    },
    {
      "code" : "OOP-CHIRO",
      "display" : "OOP Chiropractor"
    },
    {
      "code" : "OOP-RECT",
      "display" : "OOP Recreation Therapist"
    },
    {
      "code" : "OOP-PSYCH",
      "display" : "OOP Psychologist"
    },
    {
      "code" : "OOP-CC",
      "display" : "OOP Registered Clinical Counsellor"
    },
    {
      "code" : "OOP-VC",
      "display" : "OOP Vocational Counsellor"
    },
    {
      "code" : "OOP-PO",
      "display" : "OOP Podiatrist"
    },
    {
      "code" : "OOP-AUD",
      "display" : "OOP Audiologist"
    },
    {
      "code" : "OOP-SLP",
      "display" : "OOP Speech Language Pathologist"
    },
    {
      "code" : "OOP-PT",
      "display" : "OOP Physical Therapist"
    },
    {
      "code" : "OOP-SW",
      "display" : "OOP Social Worker"
    },
    {
      "code" : "OOP-RT",
      "display" : "OOP Respiratory Therapist"
    },
    {
      "code" : "OOP-RN",
      "display" : "OOP Registered Nurse"
    },
    {
      "code" : "OOP-RD",
      "display" : "OOP Registered Dietician"
    },
    {
      "code" : "OOP-OT",
      "display" : "OOP Occupational Therapist"
    },
    {
      "code" : "OOP-ND",
      "display" : "OOP Naturopathic Doctor"
    },
    {
      "code" : "OOP-DEN",
      "display" : "OOP Dentist"
    },
    {
      "code" : "OOP-RNP",
      "display" : "OOP Registered Nurse Practitioner"
    },
    {
      "code" : "OOP-PHARM",
      "display" : "OOP Pharmacist"
    },
    {
      "code" : "OOP-RM",
      "display" : "OOP Registered Midwife"
    },
    {
      "code" : "OOP-OPT",
      "display" : "OOP Optometrist"
    },
    {
      "code" : "OOP-MD",
      "display" : "OOP Medical Doctor"
    },
    {
      "code" : "CC",
      "display" : "Clinical Counsellor"
    },
    {
      "code" : "UNSPECIFIED",
      "display" : "UNSPECIFIED"
    },
    {
      "code" : "RTT",
      "display" : "Radiation Technologist in Therapy"
    },
    {
      "code" : "RN",
      "display" : "Registered Nurse"
    },
    {
      "code" : "RNP",
      "display" : "Registered Nurse Practitioner"
    },
    {
      "code" : "RPN",
      "display" : "Registered Psychiatric Nurse"
    },
    {
      "code" : "RTEMG",
      "display" : "Registered Electromyography Technologist"
    },
    {
      "code" : "RTMR",
      "display" : "Radiation Technologist  in Magnetic Resonance"
    },
    {
      "code" : "PHARM",
      "display" : "Pharmacist"
    },
    {
      "code" : "PO",
      "display" : "Podiatrist"
    },
    {
      "code" : "RAC",
      "display" : "Registered Acupuncturist"
    },
    {
      "code" : "REPT",
      "display" : "Registered Evoked Potential Technologist"
    },
    {
      "code" : "RET",
      "display" : "Registered Electroencephalography Technologist"
    },
    {
      "code" : "RM",
      "display" : "Registered Midwife"
    },
    {
      "code" : "LPN",
      "display" : "Licensed Practical Nurse"
    },
    {
      "code" : "MD",
      "display" : "Medical Doctor"
    },
    {
      "code" : "MOA",
      "display" : "Medical Office Assistant"
    },
    {
      "code" : "OPT",
      "display" : "Optometrist"
    },
    {
      "code" : "PCP",
      "display" : "Primary Care Paramedic"
    },
    {
      "code" : "PCY",
      "display" : "Pharmacy"
    },
    {
      "code" : "ACP",
      "display" : "Advanced Care Paramedic"
    },
    {
      "code" : "CCP",
      "display" : "Critical Care Paramedic"
    },
    {
      "code" : "DEN",
      "display" : "Dentist"
    },
    {
      "code" : "EMR",
      "display" : "Emergency Medical Responder"
    },
    {
      "code" : "OT",
      "display" : "Occupational Therapist"
    },
    {
      "code" : "PSYCH",
      "display" : "Psychologist"
    },
    {
      "code" : "SW",
      "display" : "Social Worker"
    },
    {
      "code" : "RCSW",
      "display" : "Registered Clinical Social Worker"
    },
    {
      "code" : "CHIRO",
      "display" : "Chiropractor"
    },
    {
      "code" : "PHYSIO",
      "display" : "Physiotherapist"
    },
    {
      "code" : "RMT",
      "display" : "Registered Massage Therapist"
    },
    {
      "code" : "KN",
      "display" : "Kinesiologist"
    },
    {
      "code" : "PTECH",
      "display" : "Pharmacy Technician"
    },
    {
      "code" : "COUN",
      "display" : "Counsellor"
    },
    {
      "code" : "MFT",
      "display" : "Marriage and Family Therapist"
    },
    {
      "code" : "RD",
      "display" : "Registered Dietitian"
    },
    {
      "code" : "HA",
      "display" : "Health Authority"
    },
    {
      "code" : "PHARMTECH",
      "display" : "PHARMTECH"
    },
    {
      "code" : "RTNM",
      "display" : "Nuclear Medicine Technologist"
    },
    {
      "code" : "RTR",
      "display" : "Radiation Technologist in Radiology"
    }
  ]
}

```
