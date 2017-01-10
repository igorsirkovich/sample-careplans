# Sample FHIR CarePlan Resources

Sample 🔥FHIR CarePlan and related resources for chronic care scenarios.

The sample resources are based on a storyboard for chronic conditions that illustrates the clinical documentation used and created by care providers, and communication flow between a patient and care team members involved in his/her long term care. The chronic condition selected for the first storyboard is [Type II Diabetes Mellitus (Type II DM)](./Care Plan Storyboard - Diabetes Mellitus.pdf).

Because FHIR is still evolving there may be different versions of the resources:

- the `master` branch contains **STU-3** (v`1.8.0`) resources
- the `develop` branch contains (nothing at this time)

Care Plan Scenarios
===================
These FHIR care plan scenarios were originally created to support the [Care Plan Track of HL7 FHIR Connectathon 14][track], held on Jan 14-15, 2017. The scenario scope and contents are expected to evolve and grow based on both clinical and technical experience.  

For the Type II Diabetes scenario, the FHIR resource files are divided into four folders:

- Common: shared content for Patients, Practitioners, RelatedPerson, and other resources
- PCP: healthcare provider organization for patient’s Primary Care Provider (PCP)
- Dietitian: healthcare provider organization for a specialist referral
- Podiatry: healthcare provider organization for a specialist referral

Initially, all of these provider organization resources are loaded into a single FHIR server, but we expect to distribute the clinical content so that each provider organization is supported by a distinct FHIR server.

[track]: http://wiki.hl7.org/index.php?title=201701_Care_Plan

Loading these files into your FHIR server
-----------------------------------------
Each file contains a single FHIR resource.  A shell script is included that loads all resources into your FHIR server:

`$. load-all http://fhir3.healthintersections.com.au/open > log.txt`

or `$. load-all http://localhost:8080/fhir > log.txt`

License
-------

This work is [Apache 2](./LICENSE.txt) licensed.
FHIR® is the registered trademark of [HL7][hl7] and is used with the permission of HL7.

[hl7]: http://hl7.org/
