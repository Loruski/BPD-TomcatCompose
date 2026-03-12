FROM eclipse-temurin:8u322-b06-jdk-alpine

ENV JAVA_VERSION=8u322

# COPY ./apache-tomcat-8.5.11 /apache-tomcat-8.5.11-temp
COPY ./apache-tomcat-8.5.11.zip .
COPY ./startup.zip .

RUN addgroup -S tomcat && adduser -S tomcat -G tomcat

RUN unzip /apache-tomcat-8.5.11.zip -d /home/tomcat/tmp
RUN unzip /startup.zip -d /home/tomcat/

ENV CATALINA_HOME=/home/tomcat/apache-tomcat-8.5.11

RUN chown -R tomcat:tomcat /home/tomcat/tmp/apache-tomcat-8.5.11/
RUN chmod -R 774 /home/tomcat/tmp/apache-tomcat-8.5.11/

RUN chown -R tomcat:tomcat /home/tomcat/startup.sh
RUN chmod -R 774 /home/tomcat/startup.sh

# RUN chown -R tomcat:tomcat /apache-tomcat-8.5.11-temp

USER tomcat

EXPOSE 8080


ENTRYPOINT /home/tomcat/startup.sh