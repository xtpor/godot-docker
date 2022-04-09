
ARG VERSION
ARG SOURCE_REPOSITORY

FROM debian:10-slim

ARG VERSION

RUN apt-get update -y && apt-get install -y wget unzip
RUN wget https://downloads.tuxfamily.org/godotengine/${VERSION}/Godot_v${VERSION}-stable_export_templates.tpz
RUN mkdir export-template
RUN unzip Godot_v${VERSION}-stable_export_templates.tpz


FROM ${SOURCE_REPOSITORY}:${VERSION}

ARG VERSION

COPY --from=0 /templates /root/.local/share/godot/templates/${VERSION}.stable