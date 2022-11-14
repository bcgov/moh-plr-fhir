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

### Supporting Resource RESTful Interactions

The initial design covers all the use cases where the user is interested in receiving or updating the full Provider (Individual or Organizational) or Facility dataset.  As a result several FHIR resources are returned or submitted in a Bundle; those resources represent the full dataset.  A resource based RESTful approach is going to be implemented to allow more external partners to integrate seamlessly.

E.g. The current operations, i.e. Practitioner/IPC/$entityQuery, Location/IFC/$entityQuery and Organization/IPC/$entityQuery could be broken down into more atomic, resource focused, interactions.

For example, the full Provider returned by the following in a Bundle with several resources

GET Practitioner/IPC.00012343.BC.PRS/$entityQuery

is going to be accomplished by a more 'chatty' interfaces:

GET Practitioner/IPC.00012343.BC.PRS  
GET PractitionerRole/IPC.00012343.BC.PRS**  
GET PractitionerRole?practitioner=Practitioner/IPC.00012343.BC.PRS*  
GET PractitionerRole/Relationship1-ID**  
GET PractitionerRole/Relationship2-ID**  
GET PractitionerRole/Relationship3-ID**  

Or in the case of Organization:

GET Organization/IPC.00012343.BC.PRS  
GET PractitionerRole?organization=Organization/IPC.00012343.BC.PRS  
GET PractitionerRole/Relationship1-ID  
GET PractitionerRole/Relationship2-ID  
GET OrganizationAffiliation?participatingOrganization=Organization/IPC.00012343.BC.PRS  
GET OrganizationAffiliation/Relationship3-ID  
GET OrganizationAffiliation/Relationship4-ID  

The same applies to Locations:

GET Location/12343  
GET PractitionerRole?location=Location/12343  
GET PractitionerRole/Relationship1-ID  
GET PractitionerRole/Relationship2-ID  
GET OrganizationAffiliation?location=Location/12343  
GET OrganizationAffiliation/Relationship3-ID  
GET OrganizationAffiliation/Relationship4-ID  

\* this type of query returns all the PractitionerRoles related to a Practitioner  
** this type of query returns a single PractitionerRole related to a Practitioner
