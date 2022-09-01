
This profile sets the minimum expectations for a Bundle resource that is being used to a transaction to maintain a Practitioner.


### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements:

**Each Bundle must have:**

1. a fixed code for the type of 'collection'

**Each Bundle entry must support:**

1.  a unique fullUrl as urn:uuid
2.  a resource which is of type: 
	*  BC Organization (mandatory)
	*  BC Organizaiton Role (optional)
	*  BC Role Relationship (optional)


### Examples

- [Add Organization Bundle Example](Bundle-Example-AddOrganization-Bundle.html)
