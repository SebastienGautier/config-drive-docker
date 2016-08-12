FROM alpine
MAINTAINER Sébastien Gautier

VOLUME ["/opt/data"]

RUN apk update && apk add xorriso
RUN mkdir -p /tmp/new-drive/openstack/latest

ENTRYPOINT /bin/sh /opt/data/entrypoint.sh
