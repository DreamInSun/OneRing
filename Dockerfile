# Version 1.0.0
#========== Basic Image ==========
From tomcat
MAINTAINER "DreamInSun"


#========== Environment ==========


#========== Configuration ==========
ENV MYSQL_CONN mysql://OneRing:OneRing@10.168.8.231:3306/OneRing
#ENV APP_PROFILE product

#========== Install Application ==========
WORKDIR /usr/local/tomcat
ADD ./xdiamond  ./webapps/onering
ADD ./shell/setenv.sh ./bin/ 

WORKDIR /usr/local/tomcat/webapps
RUN ls


#========== Expose Ports ==========
EXPOSE 8080
EXPOSE 5678


#========= RUN ==========
ADD ./shell/docker-entry.sh /
RUN chmod a+x /docker-entry.sh

#========= Start Service ==========
ENTRYPOINT ["/docker-entry.sh"]
#CMD ["catalina.sh", "run"]