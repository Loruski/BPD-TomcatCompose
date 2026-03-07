#!/bin/sh
if [ -z "$(ls -A /apache-tomcat-8.5.11/)" ]; then
   cp -r /tmp/apache-tomcat-8.5.11/ /
fi

exec /apache-tomcat-8.5.11/bin/catalina.sh run