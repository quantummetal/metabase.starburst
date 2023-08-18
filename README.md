# Metabase

Build metabase from jar file to include starburst driver plugin.

## To Build metabase in amd64

```bash
docker buildx build --platform linux/amd64 . -t metabase --output type=docker
```