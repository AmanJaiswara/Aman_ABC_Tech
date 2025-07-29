# Using the official tomcat base image
FROM tomcat:9.0-jdk21-temurin

# 1. Define a build argument to receive the WAR file name.
ARG WAR_FILE_NAME

# 2. Copy the war file using the argument, and rename it to ROOT.war for base URL access.
COPY ${WAR_FILE_NAME} /usr/local/tomcat/webapps/app.war

# Exposing the 8080 port
EXPOSE 8080

# Starting the container
CMD ["catalina.sh", "run"]
