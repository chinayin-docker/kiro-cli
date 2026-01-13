# kiro-cli

Docker image for kiro-cli

[![Docker Image CI](https://github.com/chinayin-docker/kiro-cli/actions/workflows/ci.yml/badge.svg?event=schedule)](https://github.com/chinayin-docker/kiro-cli/actions/workflows/ci.yml)
![Docker Image Version (latest semver)](https://img.shields.io/docker/v/chinayin/kiro-cli?sort=semver)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/chinayin/kiro-cli?sort=semver)
![Docker Pulls](https://img.shields.io/docker/pulls/chinayin/kiro-cli)

### Authorization file

kiro-cli stores its local data under: `~/.local/share/kiro-cli/data.sqlite3`

If you have an authorization file, you can mount it into the container so the CLI can use it.

Docker run (bind-mount)

```shell
docker run --rm -it \
  -v "$PWD/data.sqlite3:/root/.local/share/kiro-cli/data.sqlite3" \
  chinayin/kiro-cli:latest
```
