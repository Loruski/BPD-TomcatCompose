FROM eclipse-temurin:8u322-b06-jdk-alpine

ENV JAVA_VERSION=8u322

COPY ./apache-tomcat-8.0.32.zip .
COPY ./startup.zip .


RUN unzip /apache-tomcat-8.0.32.zip -d /tmp
RUN unzip /startup.zip
# RUN tar -xvzf apache-tomcat-8.0.32.tar.gz 

COPY ./ode.war /tmp/apache-tomcat-8.0.32/webapps


ENV CATALINA_HOME=/apache-tomcat-8.0.32

RUN addgroup -S tomcat && adduser -S tomcat -G tomcat

# RUN chown -R tomcat:tomcat ${CATALINA_HOME}
RUN chown -R tomcat:tomcat /tmp/apache-tomcat-8.0.32/
RUN chmod -R 774 /tmp/apache-tomcat-8.0.32/

RUN chown -R tomcat:tomcat /startup.sh
RUN chmod -R 774 /startup.sh

USER tomcat

EXPOSE 8080

ENTRYPOINT /startup.sh
# ENTRYPOINT ["/apache-tomcat-8.0.32/bin/catalina.sh", "run" ]

# && ls /apache-tomcat-8.0.32/logs

# ENTRYPOINT sleep infinity
# ENTRYPOINT $CATALINA_HOME/bin/catalina.sh start - not working!! container stops immediately