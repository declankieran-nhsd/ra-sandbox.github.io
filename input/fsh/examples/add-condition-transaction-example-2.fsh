Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $RARecord-FlagCategory-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-FlagCategory-1
Alias: $sct = https://snomed.info/sct
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $CareConnect-ConditionCategory-1 = https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-ConditionCategory-1
Alias: $RARecord-ConditionCode-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-ConditionCode-1
Alias: $DataOperation = http://hl7.org/fhir/v3/DataOperation
Alias: $CareConnect-SDSJobRoleName-1 = https://fhir.hl7.org.uk/STU3/CodeSystem/CareConnect-SDSJobRoleName-1
Alias: $RARecord-AdjustmentCategory-1 = https://fhir.nhs.uk/STU3/CodeSystem/RARecord-AdjustmentCategory-1

Instance: add-condition-transaction-example-2
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[=].resource = patient-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Patient?identifier=9912003888"
* entry[+].fullUrl = "urn:uuid:959fbc3c-0907-419e-aa3d-ab88f2d90c5e"
* entry[=].resource = consent-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Consent?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[=].resource = master-flag-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/fba99f70-fe1d-42e2-b77a-916e44b53c19"
* entry[+].fullUrl = "urn:uuid:41a84a93-1c95-4162-b13c-1c617509e6e2"
* entry[=].resource = condition-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition?patient=urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77"
* entry[+].fullUrl = "urn:uuid:04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
* entry[=].resource = condition-flag-example-1
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/04adcb5b-3de7-4f67-97f0-b2fdf941ba85"
* entry[+].fullUrl = "urn:uuid:09264d2-3986-458b-91eb-e7482b4c3025"
* entry[=].resource = condition-example-2
* entry[=].request.method = #PUT
* entry[=].request.url = "Condition/09264d2-3986-458b-91eb-e7482b4c3025"
* entry[+].fullUrl = "urn:uuid:212c1018-f52a-4db7-9bc2-59a88622eb4f"
* entry[=].resource = condition-flag-example-2
* entry[=].request.method = #PUT
* entry[=].request.url = "Flag/212c1018-f52a-4db7-9bc2-59a88622eb4f"

Instance: condition-example-2
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active
* category = $CareConnect-ConditionCategory-1#issue "Issue"
* code = $sct#73618009 "Autistic spectrum disorder with isolated skills"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)

Instance: condition-flag-example-2
InstanceOf: Flag
Usage: #inline
* status = #active
* code = $RARecord-AdjustmentCategory-1#001 "Communication support"
* category = $RARecord-FlagCategory-1#NRAF "National Reasonable Adjustments Flag"
* subject = Reference(urn:uuid:6253c43b-5cc8-4645-93b1-38e41be82a77)
* contained.resourceType = "Provenance"
* contained.target.reference = "#"
* contained.recorded = "2024-01-01T11:00:00+00:00"
* contained.activity = $DataOperation#CREATE "create"
* contained.agent.role = $CareConnect-SDSJobRoleName-1#R0260 "General Medical Practitioner"
* contained.agent.who.reference = "https://sds.spineservices.nhs.uk/STU3/Practitioner/2ee4tr6a9"
* contained.agent.onBehalfOf.reference = "https://directory.spineservices.nhs.uk/STU3/Organization/a3e5i7"
