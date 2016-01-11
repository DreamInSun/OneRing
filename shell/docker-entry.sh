#!/bin/bash
echo ========== Set Up Environment ==========
echo CATALINA_BASE is $CATALINA_BASE
echo CATALINA_HOME is $CATALINA_HOME


echo ========== Edit Configuration ==========
echo Application Profile is $APP_PROFILE


echo ========== Initialize Database ==========
echo MySQL connection is $MYSQL_CONN


echo ========== CATALINA_BASE ==========
cd $CATALINA_BASE/webapps
ls 


echo ========== Start Application ==========
#$CATALINA_BASE/bin/startup.sh