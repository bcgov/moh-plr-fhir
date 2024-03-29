[![img](https://img.shields.io/badge/Lifecycle-Experimental-339999)]

# moh-plr-fhir
This repository will be used to develop the fhir messaging specification for the plr (provider and location registry) application of ministry of health.

# Building the SPL to FHIR IGuide

## Compiling with SUSHI

This IGuide is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR Implementation Guides (IG).

After you check out the guide source from Github, install SUSHI (the FSH compiler), [as instructed here](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). 

## Running the IG Publisher

Now run:

Windows:   `$ _genonce`

Mac:   `$ ./_genonce.sh`

This will run the HL7 IG Publisher, which will take several minutes to complete. After the publisher is finished, open the file _./output/index.html_ to see the resulting IG.

To get a clean build, you may delete the _./temp and/or _./output_ directories.



Copyright 2019 Province of British Columbia

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at 

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence"
style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br /><span
xmlns:dct="http://purl.org/dc/terms/" property="dct:title">moh-plr-fhir</span> by <span
xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">the Province of British Columbia
</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">
Creative Commons Attribution 4.0 International License</a>.
