FROM node:latest

MAINTAINER Gerald Pereira <gerald.pereira@octoperf.com>

ENV HUGO_VERSION=0.29
RUN apt-get update && \
  wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo_${HUGO_VERSION}_linux_amd64/hugo_${HUGO_VERSION}_linux_amd64 /usr/bin/hugo

VOLUME ["/src"]
WORKDIR /src

EXPOSE 3000
