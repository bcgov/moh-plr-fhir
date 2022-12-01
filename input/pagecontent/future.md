{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.</p>
</blockquote>
{% endraw %}
At this time, this Implementation Guide includes requirements for PLR Providers and Facilities.  The FHIR artifacts have been created according to the current understood expectations.  It still needs to undergo review and testing.  Over the next year, the following needs to be completed before this guide will be ready for implementation:

* Review by BC Health Information Standards Working Group
* Finalize the alignment to the Canadian Core and BC Core FHIR profiles
* Testing of the guide's operations and profiles to ensure proper coverage
* Publication to BC's FHIR Portal

#### Release 4.0 - 1 

This section describes everything that is available in this release.  To access this release through messaging, in the HTTP Accept: header add fhirVersion=4.0;BCPLRVersion=1.

Included in this release are two practitioner queries

        GET /Practitioner/<IPC>/$entityQuery

and

        GET /Practitioner/$entityQuery?identifier=<value>&identifier-type=<id type>

where *IPC* is an IPC identifier, like IPC.00012345.BC.PRS, and *id type* is an identifier type like CPSID or MPID and finally *value* is the value of the identifier.  

See the following section for more [details](specification.html#query-part-1---operations).

