#!/bin/sh

set -x

adk deploy agent_engine --project="$INPUT_PROJECT_ID" --region="$INPUT_REGION" "$INPUT_AGENT"
