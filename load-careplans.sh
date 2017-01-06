#!/bin/bash

# first command line argument = FHIR server endpoint URL
# . load-careplans http://fhir3.healthintersections.com.au/open

# All transaction bundles are loaded in order to allow reference resolution

curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-Practitioner.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-Patient.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-RelatedPerson.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-LabObservation.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-DiagnosticRequest.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-VitalSigns.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-Condition.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-Goal.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-MedicationRequest.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-CareTeam.json
curl   -X POST $1 -H 'Content-type: application/json+fhir' -H 'Accept: application/json+fhir' --data @CarePlan-CarePlan.json
