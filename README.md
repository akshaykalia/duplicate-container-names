# health-check-failed

Test health check failed conditions

## Example message
```
{
    "application_id": "90fd0e2f-fdc7-4408-a1df-588dc071ab50",
    "application_build_id": "006126b0-deb3-4938-8931-e9f25cc4f5ee",
    "builds": [
        {
            "build_id": "01bbc570-c605-44d0-bd2d-a57d90ccdc5f",
            "parent_project_id": "d5add1e3-0eb1-4d5a-b6b0-0a5771f9c67a",
            "services": {
                "webworks": {},
                "webfailed": {},
                "webcrashed" :{}
            },
            "github": {
                "org_name": "ShipyardTestOrg",
                "repo_name": "health-check-failed",
                "commit_hash": "2cf0c8ca757befbb9d7c97db33740909786bf576",
                "branch": "main",
                "base_branch": "main",
                "installation_token": "{{githubtoken}}"
            },
            "compose": {
                "docker_compose_file": "docker-compose.yaml"
            }
        }
    ]
}
```


## Linked issues
[sc-16674](https://app.shortcut.com/shipyard/story/16674/crashing-pods-pods-in-crashbackoffloop-don-t-appear-to-be-showing-logs)
[sc-16331](https://app.shortcut.com/shipyard/story/16331/health-check-failed-logs-don-t-always-appear-in-sy-core)