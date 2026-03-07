#!/bin/sh
if [ -z "$(ls -A /apache-tomcat-8.0.32/)" ]; then
   cp -r /tmp/apache-tomcat-8.0.32/ /
fi

exec /apache-tomcat-8.0.32/bin/catalina.sh run