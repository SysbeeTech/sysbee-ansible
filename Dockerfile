FROM python:3.12.0-slim-bookworm
MAINTAINER "sasa@sysbee.net"
LABEL org.opencontainers.image.source https://github.com/sysbeetech/sysbee-ansible
COPY ./app/ /app
RUN pip install -r /app/requirements.txt && ansible-galaxy collection install -r /app/requirements.yml
