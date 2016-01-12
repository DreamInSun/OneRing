#!/bin/bash
echo ========== Set Up Environment ==========
export CATALINA_BASE=/usr/local/tomcat
export CATALINA_HOME=/usr/local/tomcat
export CATALINA_TMPDIR=/usr/local/tomcat/temp
export JRE_HOME=/usr
export CLASSPATH=/usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar

export CONFIG_PATH=/usr/local/tomcat/conf/

export APP_PROFILE=product

echo ========== Edit Configuration ==========
echo CATALINA_BASE is $CATALINA_BASE
echo CATALINA_HOME is $CATALINA_HOME

echo Application Profile is $APP_PROFILE

echo ========== Initialize Database ==========


echo ========== Database Configuration ==========
cd $CATALINA_BASE/webapps/onering/WEB-INF/classes/config

echo XDIAMOND_JDBC_URL = $XDIAMOND_JDBC_URL
echo $temp | sed -i "s#{XDIAMOND_JDBC_URL}#$XDIAMOND_JDBC_URL#g"           ./application.product.properties
echo XDIAMOND_JDBC_USERNAME
echo $temp | sed -i "s#{XDIAMOND_JDBC_USERNAME}#$XDIAMOND_JDBC_USERNAME#g" ./application.product.properties
echo XDIAMOND_JDBC_PASSWORD
echo $temp | sed -i "s#{XDIAMOND_JDBC_PASSWORD}#$XDIAMOND_JDBC_PASSWORD#g" ./application.product.properties

echo XDIAMOND_LDAP_URL
sed -i "s#{XDIAMOND_LDAP_URL}#$XDIAMOND_LDAP_URL#g"           ./application.product.properties
echo XDIAMOND_LDAP_USERDN
sed -i "s#{XDIAMOND_LDAP_USERDN}#$XDIAMOND_LDAP_USERDN#g"     ./application.product.properties
echo XDIAMOND_LDAP_PASSWORD
sed -i "s#{XDIAMOND_LDAP_PASSWORD}#$XDIAMOND_LDAP_PASSWORD#g" ./application.product.properties
echo XDIAMOND_LDAP_BASE
sed -i "s#{XDIAMOND_LDAP_BASE}#$XDIAMOND_LDAP_BASE#g"         ./application.product.properties


echo ========== Product Configuration ==========
cat application.product.properties


echo ========== Start Application ==========
#bash $CATALINA_BASE/bin/catalina.sh run