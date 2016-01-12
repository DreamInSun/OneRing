# Version 1.0.0
#========== Basic Image ==========
From tomcat
MAINTAINER "DreamInSun"

#========== Environment ==========

#========== Configuration ==========
ENV XDIAMOND_JDBC_URL "jdbc:mysql://10.168.8.231:3306/OneRing?useUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull"
ENV XDIAMOND_JDBC_USERNAME "OneRing"
ENV XDIAMOND_JDBC_PASSWORD "OneRing"

ENV XDIAMOND_LDAP_URL "ldap://developer.17orange.com:17389"
ENV XDIAMOND_LDAP_USERDN "cn=Manager,dc=17orange,dc=com"
ENV XDIAMOND_LDAP_PASSWORD "OrangeLife"
ENV XDIAMOND_LDAP_BASE "ou=People,dc=17orange,dc=com"

#========== Install Application ==========
WORKDIR /usr/local/tomcat
ADD ./xdiamond  ./webapps/onering
ADD ./shell/setenv.sh ./bin/ 

#========== Expose Ports ==========
EXPOSE 8080
EXPOSE 5678


#========= RUN ==========
ADD ./shell/docker-entry.sh /
RUN chmod a+x /docker-entry.sh

#========= Start Service ==========
ENTRYPOINT ["/docker-entry.sh"]

#CMD ["catalina.sh", "run"]