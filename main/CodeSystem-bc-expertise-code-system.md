# Bc Expertise Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Expertise Codes**

## CodeSystem: Bc Expertise Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-expertise-code-system | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:ExpertiseCS |

 
Bc Expertise Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ExpertiseVS](ValueSet-bc-expertise-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-expertise-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-expertise-code-system",
  "version" : "1.0.0",
  "name" : "ExpertiseCS",
  "title" : "Bc Expertise Codes",
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
  "description" : "Bc Expertise Code System",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 337,
  "concept" : [{
    "code" : "203",
    "display" : "Diagnostic and Molecular Pathology"
  },
  {
    "code" : "211",
    "display" : "Diagnostic and Clinical Pathology"
  },
  {
    "code" : "440",
    "display" : "Interventional Radiology"
  },
  {
    "code" : "421",
    "display" : "General Internal Medicine"
  },
  {
    "code" : "470",
    "display" : "Pain Medicine"
  },
  {
    "code" : "MS",
    "display" : "Management Studies"
  },
  {
    "code" : "NON-SPEC",
    "display" : "Non-Specialist"
  },
  {
    "code" : "NUCRX",
    "display" : "Nuclear Pharmacy"
  },
  {
    "code" : "NUTRX",
    "display" : "Nutrition Pharmacy"
  },
  {
    "code" : "ONCRX",
    "display" : "Oncology Pharmacy"
  },
  {
    "code" : "OP",
    "display" : "Oral Medicine and Oral Pathology"
  },
  {
    "code" : "ORD",
    "display" : "Oral and Maxillofacial Radiology"
  },
  {
    "code" : "ORTH",
    "display" : "Orthodontics"
  },
  {
    "code" : "OS",
    "display" : "Oral  Maxillofacial Surgery"
  },
  {
    "code" : "PED",
    "display" : "Pediatric Dentistry"
  },
  {
    "code" : "PER",
    "display" : "Periodontics"
  },
  {
    "code" : "PHPHARM",
    "display" : "Pharmacotherapy"
  },
  {
    "code" : "PRO",
    "display" : "Prosthodontics"
  },
  {
    "code" : "PSYRX",
    "display" : "Psychiatric Pharmacy"
  },
  {
    "code" : "SMD1",
    "display" : "Addiction Medicine"
  },
  {
    "code" : "SMD10",
    "display" : "Certified Independent Medical Examiner"
  },
  {
    "code" : "SMD100",
    "display" : "Medical Disorders of Pregnancy"
  },
  {
    "code" : "LPNOR",
    "display" : "Operating Room"
  },
  {
    "code" : "SMD101",
    "display" : "Cardiovascular Disease"
  },
  {
    "code" : "SMD104",
    "display" : "Chemical, Biological, Radiological and Nuclear Warfare Medicine"
  },
  {
    "code" : "SMD11",
    "display" : "Chemical Dependency"
  },
  {
    "code" : "SMD12",
    "display" : "Child and Adolescent Psychiatry"
  },
  {
    "code" : "SMD13",
    "display" : "Chronic Pain Management"
  },
  {
    "code" : "SMD14",
    "display" : "Clinical Hypnosis"
  },
  {
    "code" : "SMD15",
    "display" : "Colon & Rectal Surgery"
  },
  {
    "code" : "SMD16",
    "display" : "Corneal & Extraocular Disease"
  },
  {
    "code" : "SMD17",
    "display" : "Counseling"
  },
  {
    "code" : "SMD18",
    "display" : "Critical Care Medicine"
  },
  {
    "code" : "SMD19",
    "display" : "Dermatology"
  },
  {
    "code" : "SMD2",
    "display" : "Adolescent Medicine"
  },
  {
    "code" : "CCFPEM",
    "display" : "Certificant; CFPC (E.M.)"
  },
  {
    "code" : "CMCE",
    "display" : "Community Medicine Certification"
  },
  {
    "code" : "CTI",
    "display" : "Computed Tomography Imaging"
  },
  {
    "code" : "DPH",
    "display" : "Dental Public Health"
  },
  {
    "code" : "DS",
    "display" : "Dental Sciences"
  },
  {
    "code" : "END",
    "display" : "Endodontics"
  },
  {
    "code" : "ERN1",
    "display" : "General Medicine"
  },
  {
    "code" : "ERN10",
    "display" : "Critical/Intensive Care"
  },
  {
    "code" : "ERN11",
    "display" : "Occupational Health"
  },
  {
    "code" : "ERN12",
    "display" : "Home Care"
  },
  {
    "code" : "ERN13",
    "display" : "Geriatric/Long Term Care"
  },
  {
    "code" : "ERN14",
    "display" : "Community Health"
  },
  {
    "code" : "ERN15",
    "display" : "Ambulatory Care"
  },
  {
    "code" : "ERN16",
    "display" : "Nursing Administration"
  },
  {
    "code" : "ERN17",
    "display" : "Teaching"
  },
  {
    "code" : "ERN18",
    "display" : "Research"
  },
  {
    "code" : "ERN19",
    "display" : "Telehealth"
  },
  {
    "code" : "ERN2",
    "display" : "General Surgery"
  },
  {
    "code" : "CCFP",
    "display" : "Certificant; CFPC"
  },
  {
    "code" : "ERN3",
    "display" : "Pediatrics"
  },
  {
    "code" : "ERN4",
    "display" : "Maternal/Newborn"
  },
  {
    "code" : "ERN5",
    "display" : "Psychiatric/Mental Health"
  },
  {
    "code" : "ERN6",
    "display" : "Oncology"
  },
  {
    "code" : "ERN7",
    "display" : "Rehabilitation"
  },
  {
    "code" : "ERN8",
    "display" : "Operating/Recovery Room"
  },
  {
    "code" : "ERN9",
    "display" : "Emergency Care/Prehospital"
  },
  {
    "code" : "GPDEN",
    "display" : "General Practice"
  },
  {
    "code" : "GPMD",
    "display" : "General Practice"
  },
  {
    "code" : "GPPHARM",
    "display" : "General Practice"
  },
  {
    "code" : "LPNDIAL",
    "display" : "Dialysis"
  },
  {
    "code" : "LPNIMMUN",
    "display" : "Immunization"
  },
  {
    "code" : "AMD35",
    "display" : "Nuclear Medicine - Full"
  },
  {
    "code" : "AMD36",
    "display" : "Sleep Interpreter - Respiratory Dis."
  },
  {
    "code" : "AMD37",
    "display" : "Magnetic Resonance - Limited"
  },
  {
    "code" : "AMD38",
    "display" : "Pulm Director - Level II"
  },
  {
    "code" : "AMD39",
    "display" : "Pulm Director - Level III"
  },
  {
    "code" : "AMD4",
    "display" : "Craniosacral Therapy (Complementary)"
  },
  {
    "code" : "AMD40",
    "display" : "Pulm Director - Level IV"
  },
  {
    "code" : "AMD41",
    "display" : "Sleep Director - Full"
  },
  {
    "code" : "AMD42",
    "display" : "Sleep Director - Pediatric Disorders"
  },
  {
    "code" : "AMD43",
    "display" : "Sleep Director - Respiratory Disorders"
  },
  {
    "code" : "AMD44",
    "display" : "Homeopathy (Complementary)"
  },
  {
    "code" : "AMD45",
    "display" : "Ultrasound - Obstetrical/Gynecology"
  },
  {
    "code" : "AMD46",
    "display" : "Echocardiography - Restricted"
  },
  {
    "code" : "AMD47",
    "display" : "Ultasound - Non-Specialist"
  },
  {
    "code" : "AMD48",
    "display" : "Nuclear Medicine - Restricted"
  },
  {
    "code" : "AMD49",
    "display" : "Addiction Medicine"
  },
  {
    "code" : "AMD5",
    "display" : "Doctor of Osteopathy"
  },
  {
    "code" : "AMD50",
    "display" : "Customized Nutritional Therapy (Comp.)"
  },
  {
    "code" : "AMD51",
    "display" : "Ultrasound - Abortion Transvaginal"
  },
  {
    "code" : "AMD52",
    "display" : "Ultrasound - Abortion Trans-abdominal"
  },
  {
    "code" : "AMD53",
    "display" : "Anti-Aging Medicine (Complementary)"
  },
  {
    "code" : "AMD54",
    "display" : "Primordial Sound Meditation (Complementary)"
  },
  {
    "code" : "AMD55",
    "display" : "Ayurveda (Complementary)"
  },
  {
    "code" : "AMD56",
    "display" : "Fluoroscopically-guided needle placements"
  },
  {
    "code" : "AMD57",
    "display" : "Magnetic Resonance - Cardiac"
  },
  {
    "code" : "AMD58",
    "display" : "PET - Positron Emission Tomography"
  },
  {
    "code" : "AMD6",
    "display" : "Electrocardiogram"
  },
  {
    "code" : "AMD7",
    "display" : "Electroencephalography"
  },
  {
    "code" : "AMD8",
    "display" : "Electromyography"
  },
  {
    "code" : "AMD9",
    "display" : "Evoked Potential Auditory"
  },
  {
    "code" : "BI",
    "display" : "Breast Imaging"
  },
  {
    "code" : "A225",
    "display" : "Max/Fax Surgery"
  },
  {
    "code" : "A240",
    "display" : "Medical Imaging"
  },
  {
    "code" : "A385",
    "display" : "Pulmonary Diseases"
  },
  {
    "code" : "AMD1",
    "display" : "Acupuncture"
  },
  {
    "code" : "AMD10",
    "display" : "Evoked Potential Somatosensory"
  },
  {
    "code" : "AMD11",
    "display" : "Evoked Potential Visual"
  },
  {
    "code" : "AMD12",
    "display" : "Evoked Potential (EP)"
  },
  {
    "code" : "AMD13",
    "display" : "Functional Medicine (Complementary)"
  },
  {
    "code" : "AMD14",
    "display" : "Herbal Therapy (Complementary)"
  },
  {
    "code" : "AMD15",
    "display" : "Kinesiology (Complementary)"
  },
  {
    "code" : "AMD16",
    "display" : "Magnetic Resonance - Full"
  },
  {
    "code" : "AMD17",
    "display" : "Cardiac Nuclear Imaging"
  },
  {
    "code" : "AMD18",
    "display" : "Nuclear Medicine - Limited"
  },
  {
    "code" : "AMD19",
    "display" : "Ultrasound - Opthalmology"
  },
  {
    "code" : "AMD2",
    "display" : "Echocardiography - Full Adult"
  },
  {
    "code" : "AMD20",
    "display" : "Echocardiography - Full Pediatric"
  },
  {
    "code" : "AMD21",
    "display" : "Pulm Interpretation-Level II"
  },
  {
    "code" : "AMD22",
    "display" : "Pulm Interpretation-Level III"
  },
  {
    "code" : "AMD23",
    "display" : "Pulm Interpretation-Level IV"
  },
  {
    "code" : "AMD24",
    "display" : "Reiki Therapy (Complementary)"
  },
  {
    "code" : "AMD25",
    "display" : "Thought Field Therapy (Complementary)"
  },
  {
    "code" : "AMD26",
    "display" : "Transcendental Meditation (Comp.)"
  },
  {
    "code" : "AMD27",
    "display" : "Echocardiography - Transesophageal"
  },
  {
    "code" : "AMD28",
    "display" : "Trigger Point Therapy"
  },
  {
    "code" : "AMD29",
    "display" : "Ultrasound - Full"
  },
  {
    "code" : "AMD3",
    "display" : "Cardiac Stress Testing"
  },
  {
    "code" : "AMD30",
    "display" : "Ultrasound - Urology"
  },
  {
    "code" : "AMD31",
    "display" : "Ultrasound - Vascular"
  },
  {
    "code" : "AMD32",
    "display" : "Vestibular Testing - Director"
  },
  {
    "code" : "AMD33",
    "display" : "Vestibular Testing - Interpretor"
  },
  {
    "code" : "AMD34",
    "display" : "Chelation Therapy (Complementary)"
  },
  {
    "code" : "480",
    "display" : "Thoracic Surgery (Gen.Sur.)"
  },
  {
    "code" : "481",
    "display" : "Thoracic Surgery (General / Cardiac)"
  },
  {
    "code" : "490",
    "display" : "Vascular Surgery"
  },
  {
    "code" : "510",
    "display" : "Clinical Pharmacology"
  },
  {
    "code" : "512",
    "display" : "Colorectal Surgery"
  },
  {
    "code" : "515",
    "display" : "Critical Care medicine"
  },
  {
    "code" : "520",
    "display" : "General Surgical Oncology"
  },
  {
    "code" : "530",
    "display" : "Gynecology Oncology"
  },
  {
    "code" : "535",
    "display" : "Gynecology Reprod. Endocrin. & Infert."
  },
  {
    "code" : "540",
    "display" : "Transfusion Medicine"
  },
  {
    "code" : "545",
    "display" : "Maternal-Fetal Medicine"
  },
  {
    "code" : "550",
    "display" : "Clinician Investigator Program"
  },
  {
    "code" : "555",
    "display" : "Neonatal-Perinatal Medicine"
  },
  {
    "code" : "560",
    "display" : "Neuroradiology"
  },
  {
    "code" : "570",
    "display" : "Palliative Medicine"
  },
  {
    "code" : "580",
    "display" : "Pediatric Radiology"
  },
  {
    "code" : "582",
    "display" : "Pediatric Emergency Medicine"
  },
  {
    "code" : "584",
    "display" : "Developmental Pediatrics"
  },
  {
    "code" : "474",
    "display" : "Rheumatology (Int.Med or Ped.)"
  },
  {
    "code" : "900",
    "display" : "Pediatric Gastroenterology"
  },
  {
    "code" : "905",
    "display" : "Pediatric Nephrology"
  },
  {
    "code" : "910",
    "display" : "Pediatric Neurology"
  },
  {
    "code" : "915",
    "display" : "Pediatric Cardiovascular Surgery"
  },
  {
    "code" : "A110",
    "display" : "Administrative Medicine"
  },
  {
    "code" : "A115",
    "display" : "Adolescent Medicine"
  },
  {
    "code" : "A120",
    "display" : "Allergy"
  },
  {
    "code" : "A130",
    "display" : "Aviation Medicine"
  },
  {
    "code" : "A135",
    "display" : "Behavioral Therapy"
  },
  {
    "code" : "A140",
    "display" : "Child Health"
  },
  {
    "code" : "A145",
    "display" : "Cytopathology"
  },
  {
    "code" : "A155",
    "display" : "Epidemiology"
  },
  {
    "code" : "A160",
    "display" : "Family Medicine"
  },
  {
    "code" : "315",
    "display" : "General Surgery"
  },
  {
    "code" : "319",
    "display" : "Gynecology"
  },
  {
    "code" : "320",
    "display" : "Obstetrics"
  },
  {
    "code" : "325",
    "display" : "Medical Scientist (Surgery)"
  },
  {
    "code" : "329",
    "display" : "Neurosurgery"
  },
  {
    "code" : "331",
    "display" : "No Specialty (Surgery)"
  },
  {
    "code" : "336",
    "display" : "Obstetrics and Gynecology"
  },
  {
    "code" : "338",
    "display" : "Ophthalmology"
  },
  {
    "code" : "340",
    "display" : "Orthopedic Surgery"
  },
  {
    "code" : "342",
    "display" : "Otolaryngology"
  },
  {
    "code" : "345",
    "display" : "Plastic Surgery"
  },
  {
    "code" : "348",
    "display" : "Principles of Surgery "
  },
  {
    "code" : "354",
    "display" : "Thoracic Surgery"
  },
  {
    "code" : "355",
    "display" : "Thoracic Surgery"
  },
  {
    "code" : "356",
    "display" : "Cardiac Surgery"
  },
  {
    "code" : "360",
    "display" : "Urology"
  },
  {
    "code" : "405",
    "display" : "Cardiology (Int.Med. or Ped.)"
  },
  {
    "code" : "409",
    "display" : "Clinical Imm. Allergy (Int.Med. or Ped.)"
  },
  {
    "code" : "305",
    "display" : "Cardiovascular and Thoracic Surgery"
  },
  {
    "code" : "411",
    "display" : "Critical Care Medicine"
  },
  {
    "code" : "415",
    "display" : "Endocrin.  Metabolism (Int.Med. or Ped.)"
  },
  {
    "code" : "417",
    "display" : "Forensic Pathology (Anatomical/General)"
  },
  {
    "code" : "420",
    "display" : "Gastroenterology(Int.Med. or Ped.)"
  },
  {
    "code" : "425",
    "display" : "Geriatric Medicine (Int.Med.)"
  },
  {
    "code" : "430",
    "display" : "Hematology (Int.Med or Ped.)"
  },
  {
    "code" : "431",
    "display" : "Pediatric Hemat./Onc. (Pediatrics)"
  },
  {
    "code" : "432",
    "display" : "Neuropathology"
  },
  {
    "code" : "435",
    "display" : "Infectious Diseases (Int.Med or Ped.)"
  },
  {
    "code" : "452",
    "display" : "Medical Oncology (Int.Med.)"
  },
  {
    "code" : "460",
    "display" : "Nephrology (Int.Med or Ped.)"
  },
  {
    "code" : "465",
    "display" : "Pediatric General Surgery"
  },
  {
    "code" : "472",
    "display" : "Respirology (Int.Med. or Ped.)"
  },
  {
    "code" : "118",
    "display" : "Diagnostic and Therapeutic Radiology"
  },
  {
    "code" : "122",
    "display" : "Emergency Medicine"
  },
  {
    "code" : "126",
    "display" : "Gastroenterology"
  },
  {
    "code" : "130",
    "display" : "Hematology"
  },
  {
    "code" : "136",
    "display" : "Internal Medicine"
  },
  {
    "code" : "140",
    "display" : "Medical Scientist (Medicine)"
  },
  {
    "code" : "145",
    "display" : "Neurology"
  },
  {
    "code" : "146",
    "display" : "Neurology and/or Psychiatry"
  },
  {
    "code" : "149",
    "display" : "No Specialty (Medicine)"
  },
  {
    "code" : "150",
    "display" : "Medical Genetics"
  },
  {
    "code" : "151",
    "display" : "Nuclear Medicine"
  },
  {
    "code" : "152",
    "display" : "Urological Oncology"
  },
  {
    "code" : "153",
    "display" : "Paediatric Oncology"
  },
  {
    "code" : "154",
    "display" : "Community Oncology"
  },
  {
    "code" : "155",
    "display" : "Occupational Medicine"
  },
  {
    "code" : "159",
    "display" : "Pediatric Cardiology"
  },
  {
    "code" : "160",
    "display" : "Pediatrics"
  },
  {
    "code" : "162",
    "display" : "Physical Medicine Rehabilitation"
  },
  {
    "code" : "165",
    "display" : "Psychiatry"
  },
  {
    "code" : "168",
    "display" : "Public Health"
  },
  {
    "code" : "172",
    "display" : "Radiation Oncology"
  },
  {
    "code" : "176",
    "display" : "Respirology"
  },
  {
    "code" : "180",
    "display" : "Rheumatology"
  },
  {
    "code" : "190",
    "display" : "Therapeutic Radiology"
  },
  {
    "code" : "202",
    "display" : "Anatomical Pathology"
  },
  {
    "code" : "210",
    "display" : "General Pathology"
  },
  {
    "code" : "215",
    "display" : "Hematological Pathology"
  },
  {
    "code" : "225",
    "display" : "Medical Biochemistry"
  },
  {
    "code" : "227",
    "display" : "Medical Microbiology"
  },
  {
    "code" : "232",
    "display" : "Neuropathology"
  },
  {
    "code" : "240",
    "display" : "Pathology and Bacteriology"
  },
  {
    "code" : "302",
    "display" : "Cardiothoracic Surgery"
  },
  {
    "code" : "015",
    "display" : "Malignant Disease Specialist"
  },
  {
    "code" : "101",
    "display" : "Anaesthesia"
  },
  {
    "code" : "105",
    "display" : "Cardiology"
  },
  {
    "code" : "107",
    "display" : "Clinical Immunology"
  },
  {
    "code" : "108",
    "display" : "Clinical Immunology and Allergy"
  },
  {
    "code" : "110",
    "display" : "Community Medicine"
  },
  {
    "code" : "115",
    "display" : "Dermatology"
  },
  {
    "code" : "117",
    "display" : "Diagnostic Radiology"
  },
  {
    "code" : "SMD77",
    "display" : "Pediatric Rheumatology"
  },
  {
    "code" : "SMD78",
    "display" : "Perinatology"
  },
  {
    "code" : "SMD79",
    "display" : "Phlebology"
  },
  {
    "code" : "SMD8",
    "display" : "Breastfeeding"
  },
  {
    "code" : "SMD80",
    "display" : "Phlebology/Sclerotherapy"
  },
  {
    "code" : "SMD81",
    "display" : "Psychiatry"
  },
  {
    "code" : "SMD82",
    "display" : "Psychological Disorders"
  },
  {
    "code" : "SMD83",
    "display" : "Psychotherapy"
  },
  {
    "code" : "SMD84",
    "display" : "Psychotherapy/Hypnotherapy"
  },
  {
    "code" : "SMD85",
    "display" : "Psychotherapy: Indiv. Fam. & Marital"
  },
  {
    "code" : "SMD86",
    "display" : "Reproductive Endocrinology"
  },
  {
    "code" : "SMD87",
    "display" : "Sclerotherapy of Varicose Veins"
  },
  {
    "code" : "SMD88",
    "display" : "Shoulder Surgery"
  },
  {
    "code" : "SMD89",
    "display" : "Sleep Disorders Medicine"
  },
  {
    "code" : "SMD9",
    "display" : "Cardiac Rhythm Disturbances Pacemaker"
  },
  {
    "code" : "SMD90",
    "display" : "Sport Medicine"
  },
  {
    "code" : "SMD91",
    "display" : "Travel Medicine"
  },
  {
    "code" : "SMD92",
    "display" : "Treatment of Stress Disorders"
  },
  {
    "code" : "SMD93",
    "display" : "Uro-oncology"
  },
  {
    "code" : "SMD94",
    "display" : "Urogynecology"
  },
  {
    "code" : "SMD95",
    "display" : "Non-Spine Musculoskeletal Conditions"
  },
  {
    "code" : "SMD96",
    "display" : "Burn Surgery"
  },
  {
    "code" : "SMD97",
    "display" : "Speech and Hearing Disorders"
  },
  {
    "code" : "SMD98",
    "display" : "Oncological Surgery Liver and Pancreas"
  },
  {
    "code" : "SMD99",
    "display" : "Child and Maternal Health"
  },
  {
    "code" : "SMD5",
    "display" : "Arthro. And Reconstruct. Joint Surgery"
  },
  {
    "code" : "SMD50",
    "display" : "Knee Surgery"
  },
  {
    "code" : "SMD51",
    "display" : "Laparoscopic General Surgery"
  },
  {
    "code" : "SMD52",
    "display" : "Laser Surgery"
  },
  {
    "code" : "SMD53",
    "display" : "Mammography"
  },
  {
    "code" : "SMD54",
    "display" : "Maternity Care & Diseases of Females"
  },
  {
    "code" : "SMD55",
    "display" : "Medical Genetics"
  },
  {
    "code" : "SMD56",
    "display" : "Neonatology"
  },
  {
    "code" : "SMD57",
    "display" : "Neuro-ophthalmology"
  },
  {
    "code" : "SMD58",
    "display" : "Neuro-otology"
  },
  {
    "code" : "SMD59",
    "display" : "Neuroanesthesia"
  },
  {
    "code" : "SMD6",
    "display" : "Arthro. And Recon. Surg. (Knee/Shoulder)"
  },
  {
    "code" : "SMD60",
    "display" : "Nutrition"
  },
  {
    "code" : "SMD61",
    "display" : "Obstetrics & Gynecology"
  },
  {
    "code" : "SMD62",
    "display" : "Occupation Related Medical Disorders"
  },
  {
    "code" : "SMD63",
    "display" : "Occupational & Aviation Medicine"
  },
  {
    "code" : "SMD64",
    "display" : "Occupational Health"
  },
  {
    "code" : "SMD65",
    "display" : "Occupational Medicine"
  },
  {
    "code" : "SMD49",
    "display" : "Knee & Leg Surgery"
  },
  {
    "code" : "SMD66",
    "display" : "Occupational Ortho. Clinical Impairment"
  },
  {
    "code" : "SMD67",
    "display" : "Oculo-Plastics"
  },
  {
    "code" : "SMD68",
    "display" : "Ophthalmology"
  },
  {
    "code" : "SMD69",
    "display" : "OrthopedicSports Medicine in Children"
  },
  {
    "code" : "SMD7",
    "display" : "Aviation Medicine"
  },
  {
    "code" : "SMD70",
    "display" : "Orthopedic Traumatology"
  },
  {
    "code" : "SMD71",
    "display" : "Pain Management"
  },
  {
    "code" : "SMD72",
    "display" : "Pediatric & Adolescent Gynecology"
  },
  {
    "code" : "SMD73",
    "display" : "Pediatric Ophthamology Adult Strabismus"
  },
  {
    "code" : "SMD74",
    "display" : "Pediatric Orthopedic Surgery"
  },
  {
    "code" : "SMD75",
    "display" : "Pediatric Orthopedics"
  },
  {
    "code" : "SMD76",
    "display" : "Pediatric Otolaryngology"
  },
  {
    "code" : "SMD21",
    "display" : "Diabetes"
  },
  {
    "code" : "SMD22",
    "display" : "Diseases of Children"
  },
  {
    "code" : "SMD23",
    "display" : "Diseases of the Colon and Rectum"
  },
  {
    "code" : "SMD24",
    "display" : "Diseases of the Eye"
  },
  {
    "code" : "SMD25",
    "display" : "Diseases of the Joints"
  },
  {
    "code" : "SMD26",
    "display" : "Diseases of the Kidney"
  },
  {
    "code" : "SMD27",
    "display" : "Resp. Tract Diseases - Children"
  },
  {
    "code" : "SMD28",
    "display" : "Echocardiography"
  },
  {
    "code" : "SMD29",
    "display" : "Emergency Care"
  },
  {
    "code" : "SMD3",
    "display" : "Allergies"
  },
  {
    "code" : "SMD30",
    "display" : "Endocrinology"
  },
  {
    "code" : "SMD31",
    "display" : "Endoscopic General Surgery"
  },
  {
    "code" : "SMD32",
    "display" : "Exercise Medicine"
  },
  {
    "code" : "SMD33",
    "display" : "Family Therapy"
  },
  {
    "code" : "SMD34",
    "display" : "Female Incontinence & Urodynamics"
  },
  {
    "code" : "SMD35",
    "display" : "Forensic Pathology"
  },
  {
    "code" : "SMD36",
    "display" : "Forensic Psychiatry"
  },
  {
    "code" : "SMD37",
    "display" : "Forensic Psychiatry Medico-legal Med."
  },
  {
    "code" : "SMD38",
    "display" : "Gastrointestinal Surgery"
  },
  {
    "code" : "SMD20",
    "display" : "Dermatopathology"
  },
  {
    "code" : "SMD39",
    "display" : "Geriatric Medicine"
  },
  {
    "code" : "SMD4",
    "display" : "Allergies - Upper Respiratory Tract"
  },
  {
    "code" : "SMD40",
    "display" : "Geriatric Psychiatry"
  },
  {
    "code" : "SMD41",
    "display" : "Geriatrics"
  },
  {
    "code" : "SMD42",
    "display" : "Geriatrics & Psychotherapy"
  },
  {
    "code" : "SMD43",
    "display" : "Glaucoma"
  },
  {
    "code" : "SMD44",
    "display" : "Hair Restoration Surgery"
  },
  {
    "code" : "SMD45",
    "display" : "Hand & Wrist Surgery"
  },
  {
    "code" : "SMD46",
    "display" : "Head and Neck Oncology"
  },
  {
    "code" : "SMD47",
    "display" : "Hypnotherapy"
  },
  {
    "code" : "SMD48",
    "display" : "Joint Replacement & Reconstruction"
  },
  {
    "code" : "LPNORTHO",
    "display" : "Orthopaedic"
  },
  {
    "code" : "402",
    "display" : "Adolescent Medicine"
  },
  {
    "code" : "410",
    "display" : "Clinical Pharmacology"
  },
  {
    "code" : "412",
    "display" : "Colorectal Surgery"
  },
  {
    "code" : "414",
    "display" : "Developmental Pediatrics"
  },
  {
    "code" : "423",
    "display" : "General Surgical Oncology"
  },
  {
    "code" : "427",
    "display" : "Gynecologic Oncology"
  },
  {
    "code" : "428",
    "display" : "Gynecologic Reproductive Endocrinology and Infertility"
  },
  {
    "code" : "434",
    "display" : "Neuroradiology"
  },
  {
    "code" : "445",
    "display" : "Maternal-Fetal Medicine"
  },
  {
    "code" : "455",
    "display" : "Neonatal-Perinatal Medicine"
  },
  {
    "code" : "461",
    "display" : "Occupational Medicine"
  },
  {
    "code" : "462",
    "display" : "Pediatric Emergency Medicine"
  },
  {
    "code" : "468",
    "display" : "Pediatric Radiology"
  },
  {
    "code" : "485",
    "display" : "Transfusion Medicine"
  },
  {
    "code" : "406",
    "display" : "Child and Adolescent Psychiatry"
  },
  {
    "code" : "418",
    "display" : "Forensic Psychiatry"
  },
  {
    "code" : "426",
    "display" : "Geriatric Psychiatry"
  }]
}

```
