FROM ubuntu:xenial
MAINTAINER Dmitry Gamanenko 

# Set locale to UTF-8 which is not the default for docker.
# See the links for details:
# http://jaredmarkell.com/docker-and-locales/
# https://github.com/docker-library/python/issues/13
# https://github.com/docker-library/python/pull/14/files
ENV LANG C.UTF-8

ENV ANSIBLE_REPO="https://github.com/edx/ansible"
ENV ANSIBLE_VERSION="master"
ENV CONFIGURATION_REPO="https://github.com/raccoongang/configuration.git"
ENV CONFIGURATION_VERSION="ficus-rg"

ADD util/install/ansible-bootstrap.sh /tmp/ansible-bootstrap.sh
RUN chmod +x /tmp/ansible-bootstrap.sh
RUN /tmp/ansible-bootstrap.sh
