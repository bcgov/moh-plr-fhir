<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile OrganizationAffiliationProfile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:OrganizationAffiliation</sch:title>
    <sch:rule context="f:OrganizationAffiliation">
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:organization) &gt;= 1">organization: minimum cardinality of 'organization' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
