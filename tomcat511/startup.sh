#!/bin/sh
if [ -z "$(ls -A /home/tomcat/apache-tomcat-8.5.11/)" ]; then
   echo "Mounted directory empty, installing..."
   cp -r /home/tomcat/tmp/apache-tomcat-8.5.11/ /home/tomcat/
fi

exec /home/tomcat/apache-tomcat-8.5.11/bin/catalina.sh run