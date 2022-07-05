
This profile sets the minimum expectations for a PractitionerRole resource.  This resource is used to convey relationships between a Practitioner and an Organization and/or a Practitioner and a Location.

There will be one PractitionerRole with no reference to an Organization or a Location.  This instance details the roles in general that a specific Practitioner performs.  There will be a number of PractitionerRoles with a reference to an Organzation.  These instances indicate the specific roles that the Practitioner performs at the given Organization.  Finally, there will be instances with a reference to a Location.  These indicate the roles that the Practitioner performs at different places they work at.

### Mandatory and Must Support Data Elements

This PractitionerRole profile has the following mandatory elements:

**Each PractitionerRole must have:**

1. a reference to a BC Practitioner

**Each PractitionerRole may also have either:**

1.  a reference to an Organization where the Practitioner performs services, including an optional reason code for why the practitioner no longer performs for this Organization, or
2.  a reference to an Location where the Practitioner works at, including a period during which the Practitioner works at this Location and an optional reason code for why the Practitioner no longer works at this Location.

**Each Practitioner must support:**

1.  whether the role information is active or not
2.  the period during which the role was active
3.  an identifier for the role
4.  codes that identify the roles the practitioner has, either by themselves, at an organization, or at a Location
5.  codes that identify the specialties the practitioner has, including:
	1.  the period during which the specialty was active
	2.  an optional reason code for why the specialty is no longer active
6.  contact point information for the practitioner in this role

### Examples

