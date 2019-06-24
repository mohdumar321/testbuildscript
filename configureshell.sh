#!/bin/bash

echo ARTIFACT_ID=${ARTIFACT_ID}
echo IMAGE=docker-registry.default.svc:5000/${NAMESPACE}/${ARTIFACT_ID}:$TAG
echo HEALTH_CHECK_URL=${HEALTH_CHECK_URL} 
echo ROUTE=${ARTIFACT_ID}-${NAMESPACE}.svss-nop.corp.example.com
