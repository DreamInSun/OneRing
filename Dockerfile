# Version 1.0.0
#========== Basic Image ==========
From tomcat
MAINTAINER "DreamInSun"

#========== Install Application ==========
ADD ./xdiamond  /opt/tomcat/webapp

#========== Environment ==========
ENV MYSQL_CONN mysql://10.168.8.231:3306/OneRing
ENV MYSQL_USER OneRing
ENV MYSQL_PASSWD 123456

ENV APP_PROFILE product

#========== Install Application ==========
WORKDIR /opt/tomcat
ADD ./shell/setenv.sh ./bin/ 

WORKDIR /opt/tomcat/webapp
RUN ls

#========== Expose Ports ==========
EXPOSE 8080
EXPOSE 5678

#========= RUN ==========
ADD ./shell/docker-entry.sh /
CMD /docker-entry.sh