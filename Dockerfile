FROM ghcr.io/dockhippie/alpine:3.22
ENTRYPOINT [""]

# renovate: datasource=pypi depName=awscli
ENV AWSCLI_VERSION=1.41.14

# renovate: datasource=pypi depName=s3cmd
ENV S3CMD_VERSION=2.4.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U awscli==${AWSCLI_VERSION} s3cmd==${S3CMD_VERSION} python-magic && \
  rm -rf /var/cache/apk/* /root/.cache
