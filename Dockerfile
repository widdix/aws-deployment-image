FROM amazonlinux:2.0.20220426.0

RUN curl --silent --location https://rpm.nodesource.com/setup_16.x | bash -
RUN yum -y install awscli shadow-utils git nodejs python3
