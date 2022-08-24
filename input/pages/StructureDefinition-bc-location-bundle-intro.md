
This profile sets the minimum expectations for a Bundle resource that is being used to a transaction to maintain a Location.


### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements:

**Each Bundle must have:**

1. a fixed code for the type of 'collection'

**Each Bundle entry must support:**

1.  a fullUrl
2.  a resource which is of type: 
	*  BC Location (mandatory)
	*  BC Organizaiton Affiliation (optional)
	*  BC Practitoner Role (optional)
3.  a request code
4.  a request URL


### Examples

- [Add Location Transaction Example](Bundle-Example-AddLocation-Bundle.html)
