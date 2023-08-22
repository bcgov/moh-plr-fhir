<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile LocationProfile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Location</sch:title>
    <sch:rule context="f:Location">
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-details-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-health-service-area-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-facility-physical-address-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:name</sch:title>
    <sch:rule context="f:Location/f:name">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension']) &gt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-period-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-end-reason-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
