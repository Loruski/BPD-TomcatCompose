FROM eclipse-temurin:8u322-b06-jdk-alpine

ENV JAVA_VERSION=8u322

COPY ./apache-tomcat-8.5.11 /apache-tomcat-8.5.11

ENV CATALINA_HOME=/apache-tomcat-8.5.11

RUN addgroup -S tomcat && adduser -S tomcat -G tomcat

RUN chown -R tomcat:tomcat ${CATALINA_HOME}

USER tomcat

EXPOSE 8080

ENTRYPOINT ["/apache-tomcat-8.5.11/bin/catalina.sh", "run" ]