#!/bin/sh

set -x

echo -e "$INPUT_SERVICE_ACCOUNT_KEY_JSON" > /key-file.json
export GOOGLE_APPLICATION_CREDENTIALS="/key-file.json"
gcloud auth activate-service-account --key-file=/key-file.json

adk deploy agent_engine --project="$INPUT_PROJECT_ID" --region="$INPUT_REGION" "$INPUT_AGENT"
