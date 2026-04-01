# Bc Language Codes - BC Provider Location Registry FHIR Implementation Guide v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bc Language Codes**

## CodeSystem: Bc Language Codes 

| | |
| :--- | :--- |
| *Official URL*:https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-language-code-system | *Version*:1.0.0 |
| Active as of 2026-04-01 | *Computable Name*:LanguageCS |

 
Bc Language Code System 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LanguageVS](ValueSet-bc-language-value-set.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bc-language-code-system",
  "url" : "https://terminology.hlth.gov.bc.ca/ProviderLocationRegistry/CodeSystem/bc-language-code-system",
  "version" : "1.0.0",
  "name" : "LanguageCS",
  "title" : "Bc Language Codes",
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
  "description" : "Bc Language Code System",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CA",
      "display" : "Canada"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 209,
  "concept" : [{
    "code" : "S53",
    "display" : "Southern Tutchone"
  },
  {
    "code" : "S54",
    "display" : "Squamish"
  },
  {
    "code" : "S55",
    "display" : "Stoney"
  },
  {
    "code" : "S56",
    "display" : "Straits"
  },
  {
    "code" : "S57",
    "display" : "Sudanese"
  },
  {
    "code" : "S58",
    "display" : "Swampy Cree"
  },
  {
    "code" : "S59",
    "display" : "Syriac"
  },
  {
    "code" : "T27",
    "display" : "Tahltan"
  },
  {
    "code" : "T28",
    "display" : "Taishanese (Toishanese)"
  },
  {
    "code" : "T29",
    "display" : "Teochow"
  },
  {
    "code" : "T30",
    "display" : "Thompson (Ntlakapamux)"
  },
  {
    "code" : "T31",
    "display" : "Tibetan"
  },
  {
    "code" : "T32",
    "display" : "Tigrigna"
  },
  {
    "code" : "T33",
    "display" : "Tsimshian"
  },
  {
    "code" : "U07",
    "display" : "Uyghur"
  },
  {
    "code" : "U08",
    "display" : "Uzbek"
  },
  {
    "code" : "V02",
    "display" : "Vlaams (Flemish)"
  },
  {
    "code" : "W02",
    "display" : "Waray-Waray"
  },
  {
    "code" : "W03",
    "display" : "Wolof"
  },
  {
    "code" : "W04",
    "display" : "Woods Cree"
  },
  {
    "code" : "X02",
    "display" : "Xhosa (isiXhosa)"
  },
  {
    "code" : "A09",
    "display" : "Akan (Twi)"
  },
  {
    "code" : "A10",
    "display" : "Albanian"
  },
  {
    "code" : "A11",
    "display" : "Algonquin"
  },
  {
    "code" : "A12",
    "display" : "Amharic"
  },
  {
    "code" : "A13",
    "display" : "Assyrian Neo-Armaic"
  },
  {
    "code" : "A14",
    "display" : "Atikamekw"
  },
  {
    "code" : "A15",
    "display" : "Azerbaijani"
  },
  {
    "code" : "B12",
    "display" : "Babine (Wetsuwet'en)"
  },
  {
    "code" : "B13",
    "display" : "Bamanankan"
  },
  {
    "code" : "B14",
    "display" : "Beaver"
  },
  {
    "code" : "B15",
    "display" : "Belarusan"
  },
  {
    "code" : "B16",
    "display" : "Bikol"
  },
  {
    "code" : "B17",
    "display" : "Bilen"
  },
  {
    "code" : "B18",
    "display" : "Bosnian"
  },
  {
    "code" : "C12",
    "display" : "Carrier"
  },
  {
    "code" : "C13",
    "display" : "Cayuga"
  },
  {
    "code" : "C14",
    "display" : "Cebuano"
  },
  {
    "code" : "C15",
    "display" : "Chaldean Neo-Aramaic"
  },
  {
    "code" : "C16",
    "display" : "Chaochow"
  },
  {
    "code" : "C17",
    "display" : "Chilcotin"
  },
  {
    "code" : "C18",
    "display" : "Comox"
  },
  {
    "code" : "D07",
    "display" : "Dakota"
  },
  {
    "code" : "D08",
    "display" : "Dene"
  },
  {
    "code" : "D09",
    "display" : "Dinka"
  },
  {
    "code" : "D10",
    "display" : "Dogrib (Tlicho)"
  },
  {
    "code" : "E07",
    "display" : "Edo"
  },
  {
    "code" : "E08",
    "display" : "Ewe"
  },
  {
    "code" : "F17",
    "display" : "Frisian"
  },
  {
    "code" : "F18",
    "display" : "Fulah (Pular, Pulaar, Fulfulde)"
  },
  {
    "code" : "G17",
    "display" : "Ga"
  },
  {
    "code" : "G18",
    "display" : "Ganda (Luganda)"
  },
  {
    "code" : "G19",
    "display" : "Georgian"
  },
  {
    "code" : "G20",
    "display" : "Gitxsan (Gitksan)"
  },
  {
    "code" : "G21",
    "display" : "Gwich'in"
  },
  {
    "code" : "H27",
    "display" : "Haisla"
  },
  {
    "code" : "H28",
    "display" : "Haitian Creole"
  },
  {
    "code" : "H29",
    "display" : "Halkomelem"
  },
  {
    "code" : "H30",
    "display" : "Harari"
  },
  {
    "code" : "H31",
    "display" : "Heiltsuk"
  },
  {
    "code" : "H32",
    "display" : "Hiligaynon"
  },
  {
    "code" : "H33",
    "display" : "Hmong-Mien"
  },
  {
    "code" : "I17",
    "display" : "Igbo"
  },
  {
    "code" : "I18",
    "display" : "Ilocano"
  },
  {
    "code" : "I19",
    "display" : "Inuinnaqtun (Inuvialuktun)"
  },
  {
    "code" : "I20",
    "display" : "Inuktitut"
  },
  {
    "code" : "J02",
    "display" : "Javanese"
  },
  {
    "code" : "K27",
    "display" : "Kabyle"
  },
  {
    "code" : "K28",
    "display" : "Kashmiri"
  },
  {
    "code" : "K29",
    "display" : "Kaska (Nahani)"
  },
  {
    "code" : "K30",
    "display" : "Khmer (Cambodian)"
  },
  {
    "code" : "K31",
    "display" : "Kinyarwanda (Rwanda)"
  },
  {
    "code" : "K32",
    "display" : "Kurdish"
  },
  {
    "code" : "K33",
    "display" : "Kwakiutl (Kwak'wala)"
  },
  {
    "code" : "L22",
    "display" : "Lao"
  },
  {
    "code" : "L23",
    "display" : "Lillooet"
  },
  {
    "code" : "L24",
    "display" : "Lingala"
  },
  {
    "code" : "M12",
    "display" : "Macedonian"
  },
  {
    "code" : "M13",
    "display" : "Malagasy"
  },
  {
    "code" : "M14",
    "display" : "Malayalam"
  },
  {
    "code" : "M15",
    "display" : "Malecite"
  },
  {
    "code" : "M16",
    "display" : "Mi'kmaq"
  },
  {
    "code" : "M17",
    "display" : "Mohawk"
  },
  {
    "code" : "M18",
    "display" : "Mongolian"
  },
  {
    "code" : "M19",
    "display" : "Montagnais (Innu)"
  },
  {
    "code" : "M20",
    "display" : "Moose Cree"
  },
  {
    "code" : "N07",
    "display" : "Naskapi"
  },
  {
    "code" : "N08",
    "display" : "Nisga'a"
  },
  {
    "code" : "N09",
    "display" : "North Slavey (Hare)"
  },
  {
    "code" : "N10",
    "display" : "Northern East Cree"
  },
  {
    "code" : "N11",
    "display" : "Northern Tutchone"
  },
  {
    "code" : "N12",
    "display" : "Norweigan"
  },
  {
    "code" : "N13",
    "display" : "Nuu-chah-nulth (Nootka)"
  },
  {
    "code" : "O01",
    "display" : "Ojibway"
  },
  {
    "code" : "O02",
    "display" : "Oji-Cree"
  },
  {
    "code" : "O03",
    "display" : "Okanagan"
  },
  {
    "code" : "O04",
    "display" : "Oneida"
  },
  {
    "code" : "O05",
    "display" : "Oriya (Odia)"
  },
  {
    "code" : "O06",
    "display" : "Oromo"
  },
  {
    "code" : "O07",
    "display" : "Ottawa (Odawa)"
  },
  {
    "code" : "P17",
    "display" : "Pampangan (Kapampangan, Pampango)"
  },
  {
    "code" : "P18",
    "display" : "Pangasinan"
  },
  {
    "code" : "P19",
    "display" : "Plains Cree"
  },
  {
    "code" : "R07",
    "display" : "Rundi (Kirundi)"
  },
  {
    "code" : "S42",
    "display" : "Sarsi (Sarcee)"
  },
  {
    "code" : "S43",
    "display" : "Sekani"
  },
  {
    "code" : "S44",
    "display" : "Serbo-Croatian"
  },
  {
    "code" : "S45",
    "display" : "Shanghainese"
  },
  {
    "code" : "S46",
    "display" : "Shona"
  },
  {
    "code" : "S47",
    "display" : "Shuswap (secwepemctsin)"
  },
  {
    "code" : "S48",
    "display" : "Sindhi"
  },
  {
    "code" : "S49",
    "display" : "Slovene (Slovenian)"
  },
  {
    "code" : "S50",
    "display" : "Somali"
  },
  {
    "code" : "S51",
    "display" : "South Slavey"
  },
  {
    "code" : "S52",
    "display" : "Southern East Cree"
  },
  {
    "code" : "C06",
    "display" : "Chinese"
  },
  {
    "code" : "C11",
    "display" : "Czech"
  },
  {
    "code" : "D01",
    "display" : "Danish"
  },
  {
    "code" : "E01",
    "display" : "Estonian"
  },
  {
    "code" : "E06",
    "display" : "Ethiopian"
  },
  {
    "code" : "F01",
    "display" : "Farsi"
  },
  {
    "code" : "F02",
    "display" : "Fijian"
  },
  {
    "code" : "F06",
    "display" : "Finnish"
  },
  {
    "code" : "F11",
    "display" : "Foochow"
  },
  {
    "code" : "F13",
    "display" : "Fookien"
  },
  {
    "code" : "F21",
    "display" : "Fries"
  },
  {
    "code" : "F26",
    "display" : "Fukien"
  },
  {
    "code" : "G01",
    "display" : "Gaelic"
  },
  {
    "code" : "G11",
    "display" : "Greek"
  },
  {
    "code" : "G16",
    "display" : "Gajarati"
  },
  {
    "code" : "H01",
    "display" : "Hakka"
  },
  {
    "code" : "H06",
    "display" : "Hausa"
  },
  {
    "code" : "H11",
    "display" : "Hebrew"
  },
  {
    "code" : "H21",
    "display" : "Hokkien"
  },
  {
    "code" : "H26",
    "display" : "Hungarian"
  },
  {
    "code" : "I01",
    "display" : "Icelendic"
  },
  {
    "code" : "I06",
    "display" : "Indonesian"
  },
  {
    "code" : "I11",
    "display" : "Iranian/persian"
  },
  {
    "code" : "I16",
    "display" : "Irish"
  },
  {
    "code" : "A06",
    "display" : "Arabic"
  },
  {
    "code" : "A08",
    "display" : "Armenian"
  },
  {
    "code" : "B01",
    "display" : "Bengali"
  },
  {
    "code" : "B06",
    "display" : "Bulgarian"
  },
  {
    "code" : "P02",
    "display" : "Pashto"
  },
  {
    "code" : "D02",
    "display" : "Dari"
  },
  {
    "code" : "G06",
    "display" : "German"
  },
  {
    "code" : "S06",
    "display" : "Serbo-croatian"
  },
  {
    "code" : "F16",
    "display" : "French"
  },
  {
    "code" : "S31",
    "display" : "Spanish"
  },
  {
    "code" : "A01",
    "display" : "Afrikaans"
  },
  {
    "code" : "D06",
    "display" : "Dutch"
  },
  {
    "code" : "M06",
    "display" : "Mandarin"
  },
  {
    "code" : "U06",
    "display" : "Urdu"
  },
  {
    "code" : "H16",
    "display" : "Hindi"
  },
  {
    "code" : "S21",
    "display" : "Sinhala (Sinhalese)"
  },
  {
    "code" : "S26",
    "display" : "Slovak"
  },
  {
    "code" : "S36",
    "display" : "Swahili (Kiswahili)"
  },
  {
    "code" : "S41",
    "display" : "Swedish"
  },
  {
    "code" : "T01",
    "display" : "Tagalog (Pilipino, Filipino)"
  },
  {
    "code" : "T06",
    "display" : "Taiwanese"
  },
  {
    "code" : "T11",
    "display" : "Tamil"
  },
  {
    "code" : "T16",
    "display" : "Telugu"
  },
  {
    "code" : "T21",
    "display" : "Teuchew"
  },
  {
    "code" : "T22",
    "display" : "Thai"
  },
  {
    "code" : "T23",
    "display" : "Toyshunese"
  },
  {
    "code" : "T25",
    "display" : "Tulu"
  },
  {
    "code" : "T26",
    "display" : "Turkish"
  },
  {
    "code" : "U01",
    "display" : "Ukrainian"
  },
  {
    "code" : "V01",
    "display" : "Vietnamese"
  },
  {
    "code" : "W01",
    "display" : "Welsh"
  },
  {
    "code" : "X01",
    "display" : "Xliosa"
  },
  {
    "code" : "Y01",
    "display" : "Yiddish"
  },
  {
    "code" : "Y03",
    "display" : "Yoruba"
  },
  {
    "code" : "Y06",
    "display" : "Yugoslavian"
  },
  {
    "code" : "Z01",
    "display" : "Zulu (isiZulu)"
  },
  {
    "code" : "I21",
    "display" : "Italian"
  },
  {
    "code" : "J01",
    "display" : "Japanese"
  },
  {
    "code" : "K01",
    "display" : "Kachi"
  },
  {
    "code" : "K06",
    "display" : "Kannada"
  },
  {
    "code" : "K11",
    "display" : "Kikuyu (Gikuyu)"
  },
  {
    "code" : "K16",
    "display" : "Kiswahili"
  },
  {
    "code" : "K19",
    "display" : "Konkani"
  },
  {
    "code" : "K21",
    "display" : "Korean"
  },
  {
    "code" : "K26",
    "display" : "Kutchi"
  },
  {
    "code" : "L01",
    "display" : "Latin"
  },
  {
    "code" : "L06",
    "display" : "Latvian"
  },
  {
    "code" : "L11",
    "display" : "Lithuanian"
  },
  {
    "code" : "L16",
    "display" : "Low German"
  },
  {
    "code" : "L21",
    "display" : "Luganda"
  },
  {
    "code" : "M01",
    "display" : "Malay"
  },
  {
    "code" : "M03",
    "display" : "Maltese"
  },
  {
    "code" : "M11",
    "display" : "Marathi"
  },
  {
    "code" : "N01",
    "display" : "Nepali"
  },
  {
    "code" : "N03",
    "display" : "Nepalese"
  },
  {
    "code" : "N06",
    "display" : "Norwegian"
  },
  {
    "code" : "P01",
    "display" : "Persian (Farsi)"
  },
  {
    "code" : "P03",
    "display" : "Philipino"
  },
  {
    "code" : "P06",
    "display" : "Polish"
  },
  {
    "code" : "P11",
    "display" : "Portugese"
  },
  {
    "code" : "P16",
    "display" : "Punjabi (Panjabi)"
  },
  {
    "code" : "R01",
    "display" : "Romanian"
  },
  {
    "code" : "R06",
    "display" : "Russian"
  },
  {
    "code" : "S01",
    "display" : "Serbian"
  },
  {
    "code" : "S11",
    "display" : "Shanghaiese"
  },
  {
    "code" : "S16",
    "display" : "Sign Language"
  },
  {
    "code" : "B11",
    "display" : "Burmese"
  },
  {
    "code" : "C01",
    "display" : "Cantonese"
  },
  {
    "code" : "C04",
    "display" : "Castellano"
  },
  {
    "code" : "C05",
    "display" : "Catalan"
  }]
}

```
