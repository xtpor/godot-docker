
repository := docker.io/tintinho/godot

.PHONY: godot-%
.PHONY: godot-template-%

godot-v%:
	cd images/godot; VERSION=$* REPOSITORY=${repository} docker buildx bake

godot-template-v%:
	cd images/godot-template; VERSION=$* REPOSITORY=${repository} docker buildx bake