
FROM golang:1.15.8-alpine

MAINTAINER jcustenborder@gmail.com

ARG MAVEN_VERSION='3.6.3'
ARG DOCKER_COMPOSE_VERSION='1.25.5'
ARG USER_HOME_DIR='/home/jenkins'


RUN groupadd -g 994 docker
RUN useradd --uid 1000 -m -G docker jenkins

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

USER jenkins
