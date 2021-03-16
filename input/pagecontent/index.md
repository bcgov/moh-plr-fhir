{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.  For more information, please see the <a href="future.html">Future Plans</a> page in this guide.
</p>
</blockquote>
{% endraw %}
### PLR Application Overview
The PLR User Guide provides a detailed overview of the current PLR functionality.
    
The Provider and Location Registry (PLR) is the authoritative registry of British Columbia healthcare Providers’ demographic and professional information which supports activities such as:

* Patient referrals
* Informal consultations between care Providers
* Maintenance of internal Provider directories within the health sector

The PLR contains information for each Provider (e.g. personal demographics, College Identifier, Ministry Practitioner Identifier (MPID), license status, expertise, business contact, and work location) which is sourced from professional colleges and regulatory bodies such as the:

* BC College of Nursing Professionals (BCCNP)
* College of Dentists of BC (CDSBC)
* College of Midwives of BC (CMBC)
* College of Pharmacists of BC
* College of Physician and Surgeons of BC (CPSBC)
* College of Psychologists of BC
* College of Optometrists of BC

Any given Point of service (POS) can only access the Provider data fields that are included in the relevant information sharing agreements with the Ministry of Health. Specific data permissions are set within the PLR.
A POS application can use the PLR as the sole source of Provider information or to complement existing retained Provider information.

### Providers

A Provider is a person / individual or an organization acting in a role. The PLR uses the terms individual Provider and organization Provider to distinguish between the two role types.
Examples:

* Persons / Individual Provider – Dr. Sara Scalpel in the role of medical doctor.
* Organization Provider – Local Drug Mart #44 in the role of a Pharmacy.

The information recorded for Providers consists of unique identifiers, names, addresses, telecommunication numbers, electronic addresses, expertise, credentials, statuses, conditions, notes, relationships, disciplinary actions, and work locations. Information for Individual Providers also includes demographic details.

{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="bc_provider.png" alt="BC PLR Provider"/>
  <figcaption>Figure 1.1 - BC PLR Provider</figcaption>
</figure>
{::options parse_block_html="true" /}

The relationships above are compositions, the children cannot exist without the parent(s).  I.e. the Individual or Organization Provider cannot exist without a Party and Role.  And each of those relationships must have the Facilities or Providers.

### Facilities

A Facility is an identified, named place, piece of equipment or amenity of interest to BC Health which may be physical (e.g. a building or vehicle).  It can be a a particular place or position which may be physically/spatially related.  Facilities have names, unique types and purposes, and may have other communication mechanisms: mailing addresses, telephone numbers, etc.  As well, multiple organizations or individual providers can be related to a facility.

A Facility is a unique civic address in BC as recognized by DataBC and may be:

* A single building (most frequent case).
* A unit within a building.
* One of several assigned to very large buildings with multiple entrances (e.g. Vancouver General).

Examples: Long term care facility, Walk-in Clinic, Urgent Care Centre, Public Health Office, Hospitals, Ambulances, Pharmacies, Laboratory offices, Community Medical Imaging Clinics.

The PLR concept of a Providers Work Location will be promoted to an independent entity called Facility. Were Facilities are stand-alone data that can be related to Providers through Relationships.

This change will enable:

* Better Health Sector clinical document delivery, enhance location quality, and improve upon the PLR model by implementing Facility as a standalone concept.
* PLR to move toward the source of truth of Facility information for use by the Ministry’s analytics teams and Health Sector systems, where currently disparate silos of Facility information exist. 


{::options parse_block_html="false" /}
<figure>
  <img style="padding-top:0;padding-bottom:30px" width="800px" src="bc_facility.png" alt="BC PLR Facility"/>
  <figcaption>Figure 1.2 - BC PLR Facility</figcaption>
</figure>
{::options parse_block_html="true" /}

