FROM tomcat
MAINTAINER "Shankar"
RUN apt-get update
RUN apt-get install -y procps
COPY target/ola.war /usr/local/tomcat/webapp
ENTRYPOINT service /usr/local/tomcat/bin/./startup.sh
