#!/bin/sh

echo "$INPUT_SERVICE_ACCOUNT_KEY_JSON" > /key-file.json
export GOOGLE_APPLICATION_CREDENTIALS="/key-file.sjon"
gcloud auth activate-service-account --key-file=/key-file.json --project "$INPUT_PROJECT_ID"

adk deploy agent_engine --project=$INPUT_PROJECT_ID --region=$INPUT_REGION "$INPUT_ADK_PARAMETERS" $INPUT_AGENT
