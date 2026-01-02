# aicage-image-util

Utility images used by the `aicage` CLI at runtime.

Currently this repository ships the version-check image used to run agent `version.sh` scripts in a
controlled toolchain (bash, curl, git, node, npm, python, tar). The image is published to
`ghcr.io/aicage/aicage-image-util:agent-version`.

Example usage from the `aicage` repo root:

```bash
docker run --rm \
  -v "$(pwd)/aicage-image/agents/claude:/agent:ro" \
  ghcr.io/aicage/aicage-image-util:agent-version \
  /bin/bash /agent/version.sh
```
