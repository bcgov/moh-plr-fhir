

In the future clients can transition from HL7V 3 or PRS XML to FHIR. The older specifications will not be deprecated however FHIR messages have several advantages:

*	FHIR will allow the users to receive and send Facilities and Address Validation Status which the older message specifications don’t support
*	FHIR is RESTful and JSON which makes new implementations simpler than HL7 V3
*	Any new data points will only be added to FHIR


The FHIR norm defines Naming Systems to replace OIDs, used in HL7 v3 messages. The mapping between OIDs and Namings systems used in PLR is listed in this [file](PLR-NamingSystems.pdf).

All the Naming Systems in PLR are registered in the [Canadian URI Registry](https://simplifier.net/canadianuriregistry/~resources?category=NamingSystem&sortBy=RankScore_desc) or in the [BC-core project](https://simplifier.net/bccore/~resources?category=NamingSystem&sortBy=RankScore_desc), depending of their scope (internal to BC or potential use across Canada)
