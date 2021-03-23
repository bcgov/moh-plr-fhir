{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.  For more information, please see the <a href="future.html">Future Plans</a> page in this guide.</p>
</blockquote>
{% endraw %}

In the future clients can transition from HL7V 3 or PRS XML to FHIR. The older specifications will not be deprecated however FHIR messages have several advantages:

*	FHIR will allow the users to receive and send Facilities and Address Validation Status which the older message specifications don’t support
*	FHIR is RESTful and JSON which makes new implementations simpler than HL7 V3
