# deploy-adk-to-agent-engine
This is a GitHub Action that will deploy ADK agent code to Agent Engine on Google Cloud Platform.

## Getting Started
Include this action as a step in a workflow.
```yaml
steps:
  - name: Deploy to Agent Engine
    uses: matthewhuie/deploy-adk-to-agent-engine
    with:
      agent: agent_name
      project_id: gcp-project-id
      region: us-central1
```

## Inputs
| Input | Required? | Description |
|---|---|---|
| `agent` | Required | Name of the agent to deploy |
| `project_id` | Required | GCP project ID to deploy to |
| `region` | Required | GCP region to deploy to |

## TODO
- [x] Working MVP
- [x] Publish to GitHub Actions Marketplace
- [ ] More error checking
- [ ] More documentation

## Links
- https://google.github.io/adk-docs/
- https://docs.cloud.google.com/agent-builder/agent-engine/overview
