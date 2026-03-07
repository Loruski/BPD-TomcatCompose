FROM eclipse-temurin:8u322-b06-jdk-alpine

ENV JAVA_VERSION=8u322

# COPY ./apache-tomcat-8.5.11 /apache-tomcat-8.5.11-temp
COPY ./apache-tomcat-8.5.11.zip .
COPY ./startup.sh .



RUN unzip /apache-tomcat-8.5.11.zip -d /tmp

ENV CATALINA_HOME=/apache-tomcat-8.5.11

RUN addgroup -S tomcat && adduser -S tomcat -G tomcat

RUN chown -R tomcat:tomcat /tmp/apache-tomcat-8.5.11/
RUN chmod -R 774 /tmp/apache-tomcat-8.5.11/
# RUN chown -R tomcat:tomcat /apache-tomcat-8.5.11-temp

USER tomcat

EXPOSE 8080


ENTRYPOINT /startup.sh