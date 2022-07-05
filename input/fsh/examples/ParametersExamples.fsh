Instance: Example-Request-Distribution-Practitioner
InstanceOf: Parameters
Description: "Example Parameters to distribute an Individual Provider."
* parameter[+].name = "messageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:01-08:00"
* parameter[+].name = "distribution"
* parameter[=].resource = Example-DistributePractitioner-Bundle

Instance: Example-Request-Distribution-Organization
InstanceOf: Parameters
Description: "Example Parameters to distribute an Individual Provider."
* parameter[+].name = "messageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:01-08:00"
* parameter[+].name = "distribution"
* parameter[=].resource = Example-DistributeOrganization-Bundle

Instance: Example-Request-Add-Practitioner
InstanceOf: Parameters
Description: "Example Parameters to add an Individual Provider."
* parameter[+].name = "messageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:01-08:00"
* parameter[+].name = "maintain"
* parameter[=].resource = Example-AddPractitioner-Bundle

Instance: Example-Response-Add-Practitioner
InstanceOf: Parameters
Description: "Example Parameters for Add Individual Provider response."
* parameter[+].name = "messageId"
* parameter[=].valueString = "98766789"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:03-08:00"
* parameter[+].name = "requestMessageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "maintain"
* parameter[=].resource = Example-AddPractitioner-Bundle-Response

Instance: Example-Request-Add-Organization
InstanceOf: Parameters
Description: "Example Parameters to add an Organizational Provider."
* parameter[+].name = "messageId"
* parameter[=].valueString = "12344321"
* parameter[+].name = "messageTime"
* parameter[=].valueDateTime = "2022-06-27T01:01:01-08:00"
* parameter[+].name = "maintain"
* parameter[=].resource = Example-AddOrganization-Bundle

//Instance: Example-Response-Add-Organization
//InstanceOf: Parameters
//Description: "Example Parameters for Add Organizational Provider response."
//* parameter[+].name = "messageId"
//* parameter[=].valueString = "98766789"
//* parameter[+].name = "messageTime"
//* parameter[=].valueDateTime = "2022-06-27T01:01:03-08:00"
//* parameter[+].name = "requestMessageId"
//* parameter[=].valueString = "12344321"
//* parameter[+].name = "maintain"
//* parameter[=].resource = Example-AddOrganization-Bundle-Response

