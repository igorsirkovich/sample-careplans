#!/bin/bash

# Load all care plan resources into a single server

# arg1 = FHIR server endpoint URL
# . load-all http://fhir3.healthintersections.com.au/open

# Common resources
. load-resource.sh $1 Practitioner Common CarePlan-Practitioner-1
. load-resource.sh $1 Practitioner Common CarePlan-Practitioner-2
. load-resource.sh $1 Practitioner Common CarePlan-Practitioner-3
. load-resource.sh $1 Practitioner Common CarePlan-Practitioner-4

. load-resource.sh $1 Patient Common CarePlan-Patient-1
. load-resource.sh $1 RelatedPerson Common CarePlan-RelatedPerson-1

# PCP resources
. load-resource.sh $1 Observation PCP CarePlan-VitalSign-1
. load-resource.sh $1 Observation PCP CarePlan-VitalSign-2
. load-resource.sh $1 Observation PCP CarePlan-VitalSign-3
. load-resource.sh $1 Observation PCP CarePlan-VitalSign-4
. load-resource.sh $1 Observation PCP CarePlan-Observation-1
. load-resource.sh $1 Observation PCP CarePlan-Observation-2

. load-resource.sh $1 Condition PCP CarePlan-Condition-1
. load-resource.sh $1 Condition PCP CarePlan-Condition-2
. load-resource.sh $1 Condition PCP CarePlan-Condition-3
. load-resource.sh $1 Condition PCP CarePlan-HealthConcern-1
. load-resource.sh $1 Condition PCP CarePlan-HealthConcern-2
. load-resource.sh $1 Condition PCP CarePlan-HealthConcern-3
. load-resource.sh $1 Condition PCP CarePlan-HealthConcern-4
. load-resource.sh $1 Condition PCP CarePlan-HealthConcern-5

. load-resource.sh $1 MedicationRequest PCP CarePlan-MedicationRequest-1
. load-resource.sh $1 MedicationRequest PCP CarePlan-MedicationRequest-2
. load-resource.sh $1 MedicationRequest PCP CarePlan-MedicationRequest-3

. load-resource.sh $1 DiagnosticRequest PCP CarePlan-DiagnosticRequest-1

. load-resource.sh $1 Goal PCP CarePlan-Goal-1
. load-resource.sh $1 Goal PCP CarePlan-Goal-2
. load-resource.sh $1 Goal PCP CarePlan-Goal-3
. load-resource.sh $1 Goal PCP CarePlan-Goal-4
. load-resource.sh $1 Goal PCP CarePlan-Goal-5
. load-resource.sh $1 Goal PCP CarePlan-Goal-6

# Dietitian resources
. load-resource.sh $1 Organization Dietitian Dietitian-Organization-1
. load-resource.sh $1 CarePlan Dietitian Dietitian-CarePlan-1

# Podiatry resources
. load-resource.sh $1 CarePlan Podiatry Podiatry-CarePlan-1

# load PCP plan last because it contains references to included care plans
. load-resource.sh $1 ReferralRequest PCP CarePlan-ReferralRequest-1
. load-resource.sh $1 ReferralRequest PCP CarePlan-ReferralRequest-2
. load-resource.sh $1 CareTeam PCP CarePlan-CareTeam-1
. load-resource.sh $1 CarePlan PCP PCP-CarePlan-1
