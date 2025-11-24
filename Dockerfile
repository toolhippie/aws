FROM ghcr.io/dockhippie/alpine:3.22@sha256:555ec6b7c1727c1fc1be25d4e4cfb0e8bdab9ab1931a20365a873e5e21e4ff18
ENTRYPOINT [""]

# renovate: datasource=pypi depName=awscli
ENV AWSCLI_VERSION=1.43.3

# renovate: datasource=pypi depName=s3cmd
ENV S3CMD_VERSION=2.4.0

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U awscli==${AWSCLI_VERSION} s3cmd==${S3CMD_VERSION} python-magic && \
  rm -rf /var/cache/apk/* /root/.cache
