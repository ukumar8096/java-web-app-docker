FROM tomcat:8.0.20-jre8
RUN sed -i ' /<\/tomcat-users>/ i\<user username="admin" password="password" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
CMD sh catalina.sh start
MAINTAINER Uday
