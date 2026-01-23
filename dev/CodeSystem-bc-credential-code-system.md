# Bc Credential Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Credential Codes**

## CodeSystem: Bc Credential Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-credential-code-system | *Version*:1.0.0 |
| Active as of 2026-01-23 | *Computable Name*:CredentialCS |

 
Bc Credential Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PracQualificationVS](ValueSet-bc-qualification-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-credential-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-credential-code-system",
  "version" : "1.0.0",
  "name" : "CredentialCS",
  "title" : "Bc Credential Codes",
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
  "description" : "Bc Credential Code System",
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
  "count" : 57,
  "concept" : [
    {
      "code" : "DPM",
      "display" : "Doctor of Podiatric Medicine"
    },
    {
      "code" : "DO",
      "display" : "Osteopathy Degree"
    },
    {
      "code" : "EMR",
      "display" : "Emergency Med. Responder Certificate"
    },
    {
      "code" : "EMT",
      "display" : "Emergency Med. Technician Certificate"
    },
    {
      "code" : "EMT-P",
      "display" : "Emergency Medical Tech. Diploma"
    },
    {
      "code" : "LPND",
      "display" : "Licensed Practical Nurse Diploma"
    },
    {
      "code" : "M",
      "display" : "Masters Degree"
    },
    {
      "code" : "MD",
      "display" : "Medical Degree"
    },
    {
      "code" : "MN",
      "display" : "Masters Degree in Nursing"
    },
    {
      "code" : "MSCN",
      "display" : "Master of Science, Nursing"
    },
    {
      "code" : "MSCPHARM",
      "display" : "Master of Science, Pharmacy"
    },
    {
      "code" : "OTHER",
      "display" : "Null Flavour-Unknown"
    },
    {
      "code" : "PHARMD",
      "display" : "Doctorate in Pharmacy"
    },
    {
      "code" : "PHD",
      "display" : "Doctorate"
    },
    {
      "code" : "PHDN",
      "display" : "Doctorate in Nursing"
    },
    {
      "code" : "RAC",
      "display" : "Reg. Acupuncturist Cert."
    },
    {
      "code" : "RAC-A1",
      "display" : "Registered Acupuncturist Certificate - Additional Certification 1"
    },
    {
      "code" : "RAC-A2",
      "display" : "Registered Acupuncturist Certificate - Additional Certification 2"
    },
    {
      "code" : "RAC-P",
      "display" : "Registered Acupuncturist Certificate - Primary"
    },
    {
      "code" : "RTMRD",
      "display" : "Magnetic Resonance Technology Diploma"
    },
    {
      "code" : "RTNMD",
      "display" : "Nuclear Medicine Technology Diploma"
    },
    {
      "code" : "RTRD",
      "display" : "Radiological Technology Diploma"
    },
    {
      "code" : "RTTD",
      "display" : "Radiation Therapy Diploma"
    },
    {
      "code" : "ACRTMR",
      "display" : "Advanced Certification - Magnetic Resonance"
    },
    {
      "code" : "ACRTNM",
      "display" : "Advanced Certification - Nuclear Medicine"
    },
    {
      "code" : "ACRTR",
      "display" : "Advanced Certification - Radiological Technology"
    },
    {
      "code" : "ACRTT",
      "display" : "Advanced Certification - Radiation Therapy"
    },
    {
      "code" : "BACCALAUREATE",
      "display" : "Baccalaureate"
    },
    {
      "code" : "BD",
      "display" : "Bachelor Degree"
    },
    {
      "code" : "BDS",
      "display" : "Bachelor of Dental Surgery"
    },
    {
      "code" : "BN",
      "display" : "Bachelor Degree in Nursing"
    },
    {
      "code" : "BSC",
      "display" : "Bachelor of Science"
    },
    {
      "code" : "BSCPHARM",
      "display" : "Bachelor of Science, Pharm"
    },
    {
      "code" : "D",
      "display" : "Diploma"
    },
    {
      "code" : "DDS",
      "display" : "Doctor of Dental Surgery "
    },
    {
      "code" : "DMD",
      "display" : "Doctor of Dental Medicine "
    },
    {
      "code" : "DCLINPSY",
      "display" : "Doctor of Clinical Psychology"
    },
    {
      "code" : "EDD",
      "display" : "Doctor of Education"
    },
    {
      "code" : "PSYD",
      "display" : "Doctor of Psychology"
    },
    {
      "code" : "DCHIRO",
      "display" : "Doctor of Chiropractic"
    },
    {
      "code" : "DMT",
      "display" : "Diploma in Massage Therapy"
    },
    {
      "code" : "BHSC",
      "display" : "Bachelor of Health Sciences"
    },
    {
      "code" : "DMIN",
      "display" : "Doctorate of Ministerial Study"
    },
    {
      "code" : "MA",
      "display" : "Master of Arts"
    },
    {
      "code" : "MDIV",
      "display" : "Master of Divinity"
    },
    {
      "code" : "MED",
      "display" : "Master of Education"
    },
    {
      "code" : "MMFT",
      "display" : "Masters of Marriage and Family Therapy"
    },
    {
      "code" : "MPHI",
      "display" : "Master of Philosophy"
    },
    {
      "code" : "MSC",
      "display" : "Masters in Science"
    },
    {
      "code" : "MSW",
      "display" : "Master of Social Work"
    },
    {
      "code" : "MTS",
      "display" : "Master of Theological Studies"
    },
    {
      "code" : "CCC",
      "display" : "Canadian Certified Counsellor"
    },
    {
      "code" : "CPCM",
      "display" : "Certified Practice - Reproductive Health (Contraceptive Management)"
    },
    {
      "code" : "CPFC",
      "display" : "Certified Practice - First Call"
    },
    {
      "code" : "CPREM",
      "display" : "Certified Practice - Remote Nursing"
    },
    {
      "code" : "CPSTI",
      "display" : "Certified Practice - Reproductive Health (Sexually Transmitted Infections)"
    },
    {
      "code" : "DN",
      "display" : "Diploma in Nursing"
    }
  ]
}

```
