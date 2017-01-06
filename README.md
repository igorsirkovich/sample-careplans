# Sample FHIR CarePlan Resources

Sample 🔥FHIR CarePlan and related resources for chronic care scenarios.

The sample resources are based on a storyboard for chronic conditions that illustrates the clinical documentation used and created by care providers, and communication flow between a patient and care team members involved in his/her long term care. The chronic condition selected for the first storyboard is [Type II Diabetes Mellitus (Type II DM)](./Care Plan Storyboard - Diabetes Mellitus.pdf).

Because FHIR is still evolving there may be different versions of the resources:

- the `master` branch contains **STU-3** (v`1.8.0`) resources
- the `develop` branch contains (nothing at this time)

Loading these files into your FHIR server
-----------------------------------------
Each file is a FHIR transaction Bundle.  A shell script is included that loads all bundles into your FHIR server:

load-careplans http://fhir3.healthintersections.com.au/open > log.txt

or load-careplans http://localhost:8080/fhir > log.txt

License
-------

This work is [Apache 2](./LICENSE.txt) licensed.
FHIR® is the registered trademark of [HL7][] and is used with the permission of HL7.

[hl7]: http://hl7.org/
