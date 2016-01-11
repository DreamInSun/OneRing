#!/bin/bash
echo ========== Set Up Environment ==========
export CATALINA_BASE=/usr/local/tomcat
export CATALINA_HOME=/usr/local/tomcat
export CATALINA_TMPDIR=/usr/local/tomcat/temp
export JRE_HOME=/usr
export CLASSPATH=/usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar

export CONFIG_PATH=/usr/local/tomcat/conf/


echo ========== Edit Configuration ==========
echo CATALINA_BASE is $CATALINA_BASE
echo CATALINA_HOME is $CATALINA_HOME

echo Application Profile is $APP_PROFILE


echo ========== Initialize Database ==========
echo MySQL connection is $MYSQL_CONN


echo ========== CATALINA_BASE ==========
cd $CATALINA_BASE/webapps
ls 

echo ========== Start Application ==========
bash $CATALINA_BASE/bin/catalina.sh run