FROM ubuntu:jammy

USER root
ADD toolkit toolkit

ENV DEBIAN_FRONTEND=noninteractive

# Big Step Install All Required Packages and Cleanup afterwards
RUN apt-get -y update &&\
    apt-get -y install software-properties-common &&\
    add-apt-repository -y ppa:deadsnakes/ppa &&\
    apt-get -y install shellcheck &&\
    apt-get -y install python3.9 &&\
    apt-get -y install python3-pip &&\
    add-apt-repository -y --remove ppa:deadsnakes/ppa &&\
    apt remove -y software-properties-common &&\
    apt-get -y clean
