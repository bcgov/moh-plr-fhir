{% raw %}
<blockquote class="stu-note">
<p>
This specification is currently published as a Draft Standard on the ministry github and is not intended for implementation.  Feedback is welcome but readers should understand that there is more work to be done in testing the profiles and operations defined in this guide.  For more information, please see the <a href="future.html">Future Plans</a> page in this guide.</p>
</blockquote>
{% endraw %}
### FHIR Examples

#### Operational Query Examples

Search for Individual Provider (aka Practitioner + PractitionerRoles) by FHIR system id

      GET /Practitioner/IPC.00012343.BC.PRS/$entityQuery

Search for Individiual Provider by College identifier

      GET /Practitioner/$entityQuery?identifier=1234&identifier-type=CPSID

Search for an Organization by name with wildcard

      GET /Organization/$entityQuery?name=Jan*

Search for a Location by Health Authority and return all related Organizations and Providers (space in Interior Health is encoded in URL to %20)

      GET /Location/$extendedQuery?healthAuthority=Interior%20Health


#### Resource Query Examples

Operations like the $entityQuery can also be accomplished by a more 'chatty' interface, with multiple simple restful queries.
```htm
GET Practitioner/IPC.00012343.BC.PRS  
GET PractitionerRole/IPC.00012343.BC.PRS 
GET PractitionerRole/RELN.1234.PRS 
```

Or in the case of **Organization**:
```htm
GET Organization/IPC.00012343.BC.PRS  
GET PractitionerRole/RELN.1234.PRS
GET OrganizationAffiliation/RELN.3432.PRS
```


And the same applies to **Location**:
```htm
GET Location/12343  
GET PractitionerRole/RELN.3432.PRS
GET OrganizationAffiliation/RELN.3112.PRS
```

##### Resource Query Examples with Parameters

A short cut to find all PractitionerRoles associated with a Practitioner
```htm
GET PractitionerRole?practitioner=Practitioner/IPC.00012343.BC.PRS
```

A short cut to find all OrganizationAffiliations associated with a Location
```htm
GET OrganizationAffiliation?location=Location/12343
```

A short cut to find all PractitionerRoles associated with a Location
```htm
GET PractitionerRole?location=Location/12343
```
