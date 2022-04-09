
# Godot Engine Docker Image

## What is this

This repository contains scripts that build multi architecture docker images for the Godot Engine.
Currently the supported platforms are amd64 and armv7l, the image has been tested on a Raspberry Pi 4.

To used the pre-built images, find more information on the link below:

https://hub.docker.com/repository/docker/tintinho/godot


## Building the image

Prerequisites

- `make`
- `docker` (with buildkit support)

The makefile target pushes the built image to `docker.io/tintinho/godot`. To change this behavior modify the repository variable inside the `Makefile`.

```bash
# build and push the image for the server build
make godot-v3.4.4

# build and push the image for the server build with export template included
make godot-template-v3.4.4
```