FROM centos:7
MAINTAINER Nick Hilhorst <nick.hilhorst@asr.nl>

ARG NodeVersion=8.x

RUN curl --silent --location https://rpm.nodesource.com/setup_${NodeVersion} | bash - && \
    yum --enablerepo=extras install -y epel-release

RUN yum update -y && \
    yum install -y \
        gcc-c++ \
        make \ 
        wget \
        which \
        nodejs \
        python-pip && \
    yum clean all && \
    rm -rf /var/cache/yum
