variable "version" {
  default = "latest"
}

variable "repo" {
  default = "chinayin/kiro-cli"
}

group "default" {
  targets = ["alpine"]
}

function "platforms" {
  params = []
  result = ["linux/amd64", "linux/arm64"]
}

variable "registry" {
  default = "docker.io"
}

variable "repository" {
  default = "${registry}/${repo}"
}

target "_all_platforms" {
  platforms = platforms()
}

target "alpine" {
  inherits = ["_all_platforms"]
  context  = "alpine"
  tags     = [
    "${repository}:${version}",
  ]
}
