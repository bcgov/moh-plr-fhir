
This profile sets the minimum expectations for a Bundle resource that is being used to a transaction to maintain a Practitioner.


### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements:

**Each Bundle must have:**

1. a fixed code for the type of 'collection'

**Each Bundle entry must support:**

1.  a fullUrl
2.  a resource which is of type: 
	*  BC Organization (mandatory)
	*  BC Organizaiton Role (optional)
	*  BC Practitioner Role (optional)
3.  a request code
4.  a request URL


### Examples

- [Add Organization Transaction Example](Bundle-Example-AddOrganization-Bundle.html)
