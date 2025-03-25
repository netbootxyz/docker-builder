FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# renovate: datasource=pypi depName=ansible
ARG ANSIBLE_VERSION=11.4.0

RUN \
 apt-get update && \
 apt-get install -y \
      apache2 \
      binutils-dev \
      binutils-aarch64-linux-gnu \
      binutils-x86-64-linux-gnu \
      build-essential \
      dosfstools \
      figlet \
      gcc-aarch64-linux-gnu \
      gcc-x86-64-linux-gnu \
      genisoimage \
      git \
      isolinux \
      liblzma-dev \
      libslirp-dev \
      python3-pip \
      python3-setuptools \
      toilet

RUN rm -rf /usr/lib/python3.12/EXTERNALLY-MANAGED

RUN pip3 install ansible==${ANSIBLE_VERSION}
