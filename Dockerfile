FROM jenkins:1.651.3

USER root
RUN apt-get update && apt-get install -y wget
# USER jenkins # drop back to the regular jenkins user - good practice

# get maven 3.2.2
RUN wget --no-verbose -O /tmp/apache-maven-3.2.2.tar.gz http://archive.apache.org/dist/maven/maven-3/3.2.2/binaries/apache-maven-3.2.2-bin.tar.gz

# verify checksum
RUN echo "87e5cc81bc4ab9b83986b3e77e6b3095 /tmp/apache-maven-3.2.2.tar.gz" | md5sum -c

# install maven
RUN tar xzf /tmp/apache-maven-3.2.2.tar.gz -C /opt/
RUN ln -s /opt/apache-maven-3.2.2 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/apache-maven-3.2.2.tar.gz
ENV MAVEN_HOME /opt/maven

# remove download archive files
RUN apt-get clean

# download latest jenkins plugin

COPY ./plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY ./config.xml /usr/share/jenkins/ref/config.xml

RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

# copy custom built plugins
RUN wget --no-verbose -O ./plugins/fc-myst-studio-jenkins-plugin-light.hpi http://jenkins.aws.rubiconred.com:8080/job/MyST-FusionCloud-Build/lastSuccessfulBuild/artifact/fc-parent/fc-sdk/fc-myst-studio-jenkins-plugin-light/target/fc-myst-studio-jenkins-plugin-light.hpi
COPY ./plugins/fc-myst-studio-jenkins-plugin-light.hpi /usr/share/jenkins/ref/plugins/
