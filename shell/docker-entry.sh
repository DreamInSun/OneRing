#========== Set Up Environment ==========


#========== Edit Configuration ==========


#========== Initialize Database ==========
echo MySQL connection is $MYSQL_CONN
echo MySQL user is $MYSQL_USER
echo MySQL password is $MYSQL_USER

echo Application Profile is $APP_PROFILE

echo CATALINA_BASE is $CATALINA_BASE
cd $CATALINA_BASE
ls

#========== Start Application ==========
/usr/local/tomcat/bin/startup.sh