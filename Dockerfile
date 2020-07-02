FROM debian

RUN apt-get update && apt-get -y install --no-install-recommends \
        make \
        build-essential \
        libssl-dev \
        zlib1g-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        wget \
        curl \
        llvm \
        libncurses5-dev \
        xz-utils \
        tk-dev \
        libxml2-dev \
        libxmlsec1-dev \
        libffi-dev \
        liblzma-dev \
        git \
        md5deep \
        ca-certificates && \
    update-ca-certificates

WORKDIR /usr/src/python

COPY compile .
COPY mkdeb .

ENV PYTHON_VERSION 3.8.3
ENV BUILD_PATH /usr/src/python/build
ENV MAINTAINER "D. A. Bashkirtsev <bashkirtsevich@gmail.com>"
