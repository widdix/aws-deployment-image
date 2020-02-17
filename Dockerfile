FROM amazonlinux:2.0.20191016.0

RUN curl --silent --location https://rpm.nodesource.com/setup_10.x | bash -
RUN yum -y install awscli shadow-utils git nodejs
