FROM webhippie/python:3.7
ENTRYPOINT [""]

# renovate: datasource=pypi depName=awscli
ENV AWSCLI_VERSION=1.20.17

# renovate: datasource=pypi depName=s3cmd
ENV S3CMD_VERSION=2.1.0

RUN apk update && \
  apk upgrade && \
  pip3 install -U awscli==${AWSCLI_VERSION} s3cmd==${S3CMD_VERSION} python-magic && \
  rm -rf /var/cache/apk/*
