FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y --force-yes nginx \
    python \
    python-dev \
    python-pip

WORKDIR /workspace
