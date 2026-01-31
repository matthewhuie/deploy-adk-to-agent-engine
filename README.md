# deploy-adk-to-agent-engine
This is a GitHub Action that will deploy ADK agent code to Agent Engine on Google Cloud Platform.

## Getting Started
Include this action as a step in a workflow.
```yaml
jobs:
  deploy_adk:
    steps:
      - name: Deploy to Agent Engine
        uses: matthewhuie/deploy-adk-to-agent-engine
        with:
          service_account_key_json: ${{ secrets.SERVICE_ACCOUNT_KEY_JSON }}
          agent: agent_name
          project_id: gcp-project-id
          region: us-central1
```

## Inputs
| Input | Required? | Description |
|---|---|---|
| `service_account_key_json` | Required | GCP service account key in JSON format - the associated service account should have access to deploy to Agent Engine |
| `agent` | Required | Name of the agent to deploy |
| `project_id` | Required | GCP project ID to deploy to |
| `region` | Required | GCP region to deploy to |
| `adk_parameters` | Optional | Additional parameters for ADK |

## TODO
- [x] Working MVP
- [ ] More error checking
- [ ] Publish to GitHub Actions Marketplace
- [ ] More documentation

## Links
- https://google.github.io/adk-docs/
- https://docs.cloud.google.com/agent-builder/agent-engine/overview
