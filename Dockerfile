FROM google/cloud-sdk

RUN pip install --no-cache-dir --break-system-packages google-adk

CMD ["adk", "deploy", "agent_engine", "--project=$INPUT_PROJECT_ID", "--region=$INPUT_REGION", "$INPUT_AGENT"]
