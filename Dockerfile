FROM debian:jessie
MAINTAINER dweinstein "dweinst@insitusec.com"

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHON /usr/bin/python2.7
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install -qq -y --no-install-recommends \
        build-essential \
        python-pip \
        python-dev \
        python-setuptools \
        libffi-dev \
        libxml2-dev \
        libxslt1-dev \
        git \
        zlib1g-dev \
        libssl-dev

ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

EXPOSE 8080
