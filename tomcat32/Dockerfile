FROM eclipse-temurin:8u322-b06-jdk-alpine

ENV JAVA_VERSION=8u322

COPY ./apache-tomcat-8.0.32.zip .
COPY ./startup.zip .

RUN addgroup -S tomcat && adduser -S tomcat -G tomcat

RUN unzip /apache-tomcat-8.0.32.zip -d /home/tomcat/tmp
RUN unzip /startup.zip -d /home/tomcat/
# RUN tar -xvzf apache-tomcat-8.0.32.tar.gz 

COPY ./ode.war /home/tomcat/tmp/apache-tomcat-8.0.32/webapps


ENV CATALINA_HOME=/home/tomcat/apache-tomcat-8.0.32



# RUN chown -R tomcat:tomcat ${CATALINA_HOME}
RUN chown -R tomcat:tomcat /home/tomcat/tmp/apache-tomcat-8.0.32/
RUN chmod -R 774 /home/tomcat/tmp/apache-tomcat-8.0.32/

RUN chown -R tomcat:tomcat /home/tomcat/startup.sh
RUN chmod -R 774 /home/tomcat/startup.sh

USER tomcat

EXPOSE 8080

ENTRYPOINT /home/tomcat/startup.sh
# ENTRYPOINT ["/apache-tomcat-8.0.32/bin/catalina.sh", "run" ]

# && ls /apache-tomcat-8.0.32/logs

# ENTRYPOINT sleep infinity
# ENTRYPOINT $CATALINA_HOME/bin/catalina.sh start - not working!! container stops immediately