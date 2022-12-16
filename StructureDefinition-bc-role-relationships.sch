<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PractitionerRoleProfileRegistry
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:PractitionerRole</sch:title>
    <sch:rule context="f:PractitionerRole">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-rolestatus']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-rolestatus': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-statusreason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/ca/baseline/StructureDefinition/ext-statusreason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-owner-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-relationship-type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-location-relationship-type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:specialty) &lt;= 0">specialty: maximum cardinality of 'specialty' is 0</sch:assert>
      <sch:assert test="count(f:location) &lt;= 1">location: maximum cardinality of 'location' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PractitionerRole/f:organization</sch:title>
    <sch:rule context="f:PractitionerRole/f:organization">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
