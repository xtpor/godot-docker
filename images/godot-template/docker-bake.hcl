
variable "VERSION" {}
variable "REPOSITORY" {}

group "default" {
  targets = ["godot"]
}

target "godot" {
  dockerfile = "Dockerfile"
  context = "."
  platforms = ["linux/amd64", "linux/arm/v7"]
  args = {
    SOURCE_REPOSITORY = REPOSITORY
    VERSION = VERSION
  }
  tags = ["${REPOSITORY}:${VERSION}-template"]
  output = ["type=registry"]
}
