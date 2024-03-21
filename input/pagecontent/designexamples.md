
### Operations Query Examples

Search for Individual Provider (aka Practitioner + PractitionerRoles) by FHIR system id

      GET /Practitioner/IPC.00012343.BC.PRS/$entityQuery

Search for Individiual Provider by College identifier

      GET /Practitioner/$entityQuery?identifier=https://health.gov.bc.ca/fhir/NamingSystem/ca-bc-plr-ifc|IFC.00000059.BC.PRS

Search for an Organization by name with wildcard

      GET /Organization/$entityQuery?name=Jan*

Search for a Location by Health Authority and return all related Organizations and Providers (space in Interior Health is encoded in URL to %20)

      GET /Location/$extendedQuery?healthAuthority=Interior%20Health


### Resource Query Examples

Operations like the $entityQuery can also be accomplished by a more 'chatty' interface, with multiple simple restful queries.
```htm
GET Practitioner/IPC.00012343.BC.PRS  
GET PractitionerRole/IPC.00012343.BC.PRS (FUTURE)
GET PractitionerRole/RELN.1234.PRS (FUTURE)
```

Or in the case of **Organization**:
```htm
GET Organization/IPC.00012343.BC.PRS  
GET PractitionerRole/RELN.1234.PRS (FUTURE)
GET OrganizationAffiliation/RELN.3432.PRS (FUTURE)
```


And the same applies to **Location**:
```htm
GET Location/12343  
GET PractitionerRole/RELN.3432.PRS (FUTURE)
GET OrganizationAffiliation/RELN.3112.PRS (FUTURE)
```

#### Resource Query Examples with Parameters

A short cut to find all PractitionerRoles associated with a Practitioner
```htm
GET PractitionerRole?practitioner=Practitioner/IPC.00012343.BC.PRS (FUTURE)
```

A short cut to find all OrganizationAffiliations associated with a Location
```htm
GET OrganizationAffiliation?location=Location/12343 (FUTURE)
```

A short cut to find all PractitionerRoles associated with a Location
```htm
GET PractitionerRole?location=Location/12343 (FUTURE)
```
