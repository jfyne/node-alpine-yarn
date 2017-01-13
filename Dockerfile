from node:alpine

MAINTAINER Josh Fyne <josh.fyne@gmail.com>

RUN apk add --no-cache --virtual .build-deps \
    ca-certificates \
    wget \
    tar && \
    cd /usr/local/bin && \
    wget https://yarnpkg.com/latest.tar.gz && \
    tar zvxf latest.tar.gz && \
    ln -s /usr/local/bin/dist/bin/yarn.js /usr/local/bin/yarn.js && \
    ln -s /usr/local/bin/dist/bin/yarn /usr/local/bin/yarn && \
    apk del .build-deps
