#!/bin/bash

# PUT a resource to a server.
# File name must equal resource id.

# arg1 = server endpoint URL
# arg2 = resource type
# arg3 = directory (or .)
# arg4 = id/filename

# . load-resource.sh http://fhir3.healthintersections.com.au/open Observation labs cp-pcp-observation-1

echo
echo Loading $2 from $3/$4
curl -X PUT $1/$2/$4 -H 'Content-type: application/fhir+json' -H 'Accept: application/fhir+json' --data @$3/$4.json
