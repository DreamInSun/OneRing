# Version 1.0.0
#========== Basic Image ==========
From tomcat
MAINTAINER "DreamInSun"


#========== Environment ==========
ENV CATALINA_BASE    /usr/local/tomcat
ENV CATALINA_HOME    /usr/local/tomcat
ENV CATALINA_TMPDIR  /usr/local/tomcat/temp
ENV JRE_HOME         /usr
ENV CLASSPATH        /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar

ENV CONFIG_PATH      /usr/local/tomcat/conf/

#========== Configuration ==========
ENV MYSQL_CONN mysql://OneRing:OneRing@10.168.8.231:3306/OneRing
#ENV APP_PROFILE product

#========== Install Application ==========
WORKDIR /usr/local/tomcat
ADD ./xdiamond  ./webapps
ADD ./shell/setenv.sh ./bin/ 

WORKDIR /usr/local/tomcat/webapps
RUN ls


#========== Expose Ports ==========
EXPOSE 8080
EXPOSE 5678


#========= RUN ==========
ADD ./shell/docker-entry.sh /
RUN chmod a+x /docker-entry.sh
#RUN /docker-entry.sh

#========= Start Service ==========
CMD /docker-entry.sh
#CMD ["catalina.sh", "run"]