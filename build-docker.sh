#!/bin/bash
wget --no-verbose -O ./plugins/fc-myst-studio-jenkins-plugin-light.hpi http://jenkins.aws.rubiconred.com:8080/job/MyST-FusionCloud-Build/lastSuccessfulBuild/artifact/fc-parent/fc-sdk/fc-myst-studio-jenkins-plugin-light/target/fc-myst-studio-jenkins-plugin-light.hpi
# Build the Docker images which contains the plugins
# and a pre-defined config.xml
docker build --no-cache --rm=true -t jenkins-with-plugins .
