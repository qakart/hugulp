FROM node:4.5

MAINTAINER Gerald Pereira <gerald.pereira@octoperf.com>

ENV HUGO_VERSION=0.19
RUN apt-get update && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo /usr/bin/hugo

VOLUME ["/src"]
WORKDIR /src

EXPOSE 3000
