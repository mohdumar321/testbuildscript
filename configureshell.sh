#!/bin/bash

echo ARTIFACT_ID=${ARTIFACT_ID}
echo IMAGE=docker-reg.def.svc:5000/${NAMESPACE}/${ARTIFACT_ID}:$TAG
echo HEALTH_CHECK_URL=${HEALTH_CHECK_URL} 
echo ROUTE=${ARTIFACT_ID}-${NAMESPACE}.svss-nop.cO.example.com
