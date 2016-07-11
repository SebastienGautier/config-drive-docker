FROM ubuntu:latest
MAINTAINER Sébastien Gautier

VOLUME ["/opt/data"]

RUN apt-get update
RUN apt-get install -y genisoimage
RUN mkdir -p /tmp/new-drive/openstack/latest

CMD cp /opt/data/user_data /tmp/new-drive/openstack/latest/user_data
CMD mkisofs -R -V config-2 -o /opt/data/configdrive.iso /tmp/new-drive
