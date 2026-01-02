# Development

## Local build

```bash
cd aicage-image-util
docker build -t aicage/aicage-image-util:local .
```

## CI publish

GitHub Actions builds weekly, on tag pushes, or on manual runs. It publishes multi-arch images for
amd64 and arm64 after signing and verifying. The final tags are
`aicage/aicage-image-util:<ref>` and `aicage/aicage-image-util:latest`.
