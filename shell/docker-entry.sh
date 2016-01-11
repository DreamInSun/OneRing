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

echo ========== Database Config ==========
cd $CATALINA_BASE/webapps/onering/WEB-INF/classes/config

sed -i "s/{$XDIAMOND_JDBC_URL}/$XDIAMOND_JDBC_URL/g" ./application.demo.properties
sed -i "s/{$XDIAMOND_JDBC_USERNAME}/$XDIAMOND_JDBC_USERNAME/g" ./application.demo.properties
sed -i "s/{$XDIAMOND_JDBC_PASSWORD}/$XDIAMOND_JDBC_PASSWORD/g" ./application.demo.properties

sed -i "s/{$XDIAMOND_LDAP_URL}/$XDIAMOND_LDAP_URL/g" ./application.demo.properties
sed -i "s/{$XDIAMOND_LDAP_USERDN}/$XDIAMOND_LDAP_USERDN/g" ./application.demo.properties
sed -i "s/{$XDIAMOND_LDAP_PASSWORD}/$XDIAMOND_LDAP_PASSWORD/g" ./application.demo.properties
sed -i "s/{$XDIAMOND_LDAP_BASE}/$XDIAMOND_LDAP_BASE/g" ./application.demo.properties

cat application.product.properties


echo ========== Start Application ==========
bash $CATALINA_BASE/bin/catalina.sh run