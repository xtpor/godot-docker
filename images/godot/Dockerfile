
FROM debian:10-slim

ARG VERSION

WORKDIR /opt/godot

RUN apt-get update -y && apt-get install -y \
  build-essential \
  clang \
  scons \
  pkg-config \
  libx11-dev \
  libxcursor-dev \
  libxinerama-dev \
  libgl1-mesa-dev \
  libglu-dev \
  libasound2-dev \
  libpulse-dev \
  libudev-dev \
  libxi-dev \
  libxrandr-dev \
  ca-certificates \
  git

RUN git clone --single-branch --branch "${VERSION}-stable" https://github.com/godotengine/godot /opt/godot
COPY build.sh /opt/godot/
RUN ./build.sh
RUN cp /opt/godot/bin/godot* /opt/godot/bin/godot


FROM debian:10-slim

RUN apt-get update -y && apt-get install -y libatomic1
COPY --from=0 /opt/godot/bin/godot /usr/local/bin/godot