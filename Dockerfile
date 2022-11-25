FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# renovate: datasource=pypi depName=ansible
ARG ANSIBLE_VERSION=7.0.0

RUN \
 apt-get update && \
 apt-get install -y \
      apache2 \
      binutils-dev \
      binutils-aarch64-linux-gnu \
      build-essential \
      dosfstools \
      figlet \
      gcc-aarch64-linux-gnu \
      genisoimage \
      git \
      isolinux \
      liblzma-dev \
      libslirp-dev \
      python3-pip \
      python3-setuptools \
      syslinux \
      syslinux-common \
      toilet

RUN pip3 install ansible==${ANSIBLE_VERSION}
