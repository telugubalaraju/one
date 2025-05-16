# Use the official Tomcat base image
FROM tomcat:9.0-jdk11

# Remove default web appsi
COPY tomcat-users.xml /usr/local/tomcat/conf/
# Copy your WAR file to the webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

