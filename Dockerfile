FROM amazonlinux:2.0.20200207.1

RUN curl --silent --location https://rpm.nodesource.com/setup_12.x | bash -
RUN yum -y install awscli shadow-utils git nodejs
