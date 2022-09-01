
This profile sets the minimum expectations for a Bundle resource that is being used to send a Batch of Practitioner, Organization, and/or Location transaction Bundles.  


### Mandatory and Must Support Data Elements

This Bundle profile has the following mandatory elements:

**Each Bundle must have:**

1. a fixed code for the type of 'batch'

**Each Bundle entry must support:**

1.  a unique fullUrl as urn:uuid
2.  a resource which is of type: 
	*  BC Practitioner Bundle
	*  BC Organization Bundle
	*  BC Location Bundle
3.  a fixed request code of 'PUT'
4.  a request URL


### Examples

- [Batch Example](Bundle-Example-Batch-Bundle.html)
