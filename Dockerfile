FROM python:3.12.0-slim-bookworm
ENV DEBIAN_FRONTEND noninteractive
MAINTAINER "sasa@sysbee.net"
LABEL org.opencontainers.image.source https://github.com/sysbeetech/sysbee-ansible
COPY ./app/ /app
RUN pip install -r /app/requirements.txt \
&& ansible-galaxy collection install -r /app/requirements.yml \
&& apt-get update \
&& apt-get upgrade -V -y \
&& apt-get install -V -y git
