variable "CADDY_VERSION" { default = "latest" }

target "docker-metadata-action" {}
target "github-metadata-action" {}

target "default" {
    inherits = [ "docker-task-proxy" ]
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}

target "local" {
    inherits = [ "docker-task-proxy" ]
    tags = [ "swarmlibs/docker-task-proxy:local" ]
}

target "docker-task-proxy" {
    context = "."
    dockerfile = "Dockerfile"
    inherits = [
        "docker-metadata-action",
        "github-metadata-action",
    ]
    args = {
        CADDY_VERSION = "${CADDY_VERSION}"
    }
}
