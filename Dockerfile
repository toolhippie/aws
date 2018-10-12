FROM webhippie/python:latest

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="AWS" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/bin/aws"]

RUN apk update && \
  apk upgrade && \
  apk add groff && \
  pip3 install -U pip awscli s3cmd python-magic && \
  rm -rf /var/cache/apk/*
