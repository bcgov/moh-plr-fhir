
This profile sets the minimum expectations for a Practitioner resource that is being used in a transaction to create/update a Practitioner.

### Mandatory and Must Support Data Elements

This Practitioner profile has the following mandatory elements:

**Each Practitioner must have:**

1. an identifier
2. at least one name
3. a Valid Period extension

**Each Practitioner must support:**

1.  whether the Practitioner is active or not
2.  a Contact Point
3.  an Address
4.  Gender
5.  Birth Date (with optional Birth Time extension)
6.  Qualification information:
	1.  code
	2.  Issue Date Extension
	3.  identifier (optional)
	4.  period (optional)
	5.  Issuing Organization (optional).  NOTE: the given reference will be to a contained instance of an organization that has a name and an optional identifier.
	6.  End Reason Extension (optional)
7.  Communication information
	1.  coding
	2.  Period Extension
	3.  End Reason Extension (optional)
8.  End Reason Extension (optional)
9. License Status Extension (optional)
10.  Date of Death Extension (optional)
11.  Birth Place Extension (optional)
12.  Confidentiality Extension (optional)
13.  Disciplinary Action Extension (optional)
14.  Conditions Extension (optional)
15.  Notes Extension (optional)
16.  Practitioner to Practitioner Relationship Extension (optional)

### Contained Resources

This Practitioner profile has a list of contained Organizations that are referenced by the Qualification information.  There will be no separate instance of an issuing organization.

### Examples

- [Practitioner Example](Practitioner-Example-AddPractitioner-Practitioner.html)
