<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Extension
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Extension</sch:title>
    <sch:rule context="f:Extension">
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-type-extension']) &gt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-type-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-type-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension']) &gt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-ownership-type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-service-delivery-type-extension']) &gt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-service-delivery-type-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-service-delivery-type-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-service-delivery-type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension']) &gt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-pci-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-legal-name-extension']) &lt;= 1">extension with URL = 'http://hlth.gov.bc.ca/fhir/provider/StructureDefinition/bc-organization-clinic-legal-name-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
