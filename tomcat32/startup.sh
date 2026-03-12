#!/bin/sh
if [ -z "$(ls -A /home/tomcat/apache-tomcat-8.0.32/)" ]; then
   echo "Mounted directory empty, installing..."
   cp -r /home/tomcat/tmp/apache-tomcat-8.0.32/ /home/tomcat/
fi

exec /home/tomcat/apache-tomcat-8.0.32/bin/catalina.sh run