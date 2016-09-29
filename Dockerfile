FROM node:4

MAINTAINER Gérald Pereira <gerald.pereira@octoperf.com>

ENV HUGO_VERSION=0.16
RUN apt-get update && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tgz && \
  tar xzf hugo_${HUGO_VERSION}_linux-64bit.tgz && \
  rm -r hugo_${HUGO_VERSION}_linux-64bit.tgz && \
  mv hugo /usr/bin/hugo

VOLUME ["/src"]
WORKDIR /src

EXPOSE 3000