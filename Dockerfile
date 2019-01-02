FROM tomcat:9-jre11

COPY target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080