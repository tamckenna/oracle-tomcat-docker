#!/bin/bash

# Set Docker Image Name
imageName="${1}"
if [ -z "$imageName" ]; then
    imageName=oraclejava-tomcat
fi

# Go to the Dockerfile src dirctory
cd src/

# Build Ubuntu Base Docker Image using Ubuntu 16.04 LTS & push to DockerHub
#docker build -t tmckenna/ubuntu-base:16.04 -f ubuntu-base.dock .
#docker push tmckenna/ubuntu-base:16.04

# Build Oracle Java Tomcat Docker Images
docker build -t ${imageName}:tom7-jre6 -f tom7-jre6.dock .
docker build -t ${imageName}:tom8.5-jre7 -f tom8.5-jre7.dock .
docker build -t ${imageName}:tom8.5-jre8 -f tom8.5-jre8.dock .
docker build -t ${imageName}:tom8.5-jre9 -f tom8.5-jre9.dock .
docker build -t ${imageName}:tom9-jre9 -f tom9-jre9.dock .
docker build -t ${imageName}:latest -f tom9-jre9.dock .