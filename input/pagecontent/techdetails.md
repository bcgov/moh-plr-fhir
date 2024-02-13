{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.</p>
</blockquote>
{% endraw %}

### HTTP Headers
The HTTP Headers will need several specific parameters configured with each request.

Parameter | Description
---|---|
Authorization | Bearer KeyCloak token
UserId | User id of individual e.g. bsmith@IDIR or <userid>@<identy provider>
Accept | E.g. application/fhir+json;fhirVersion=4.0;BCPLRVersion=1
  
The *Accept* parameter must be exactly as in the table with the exception of version changes.  Currently PLR only supports fhirVersion=4.0 and BCPLRVersion=1.
