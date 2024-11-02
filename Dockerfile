# using Tomcat9.0 as base image
FROM tomcat:9.0

MAINTAINER "RajaVP"
LABEL project="Amazon.war"

#using ENV instruction

ENV DIR_PATH /usr/local/tomcat

# Set the working directory to the Tomcat installation
WORKDIR ${DIR_PATH}

# Copy contents from webapps.dist to webapps inside the container
RUN cp -r webapps.dist/* webapps/

# Copy the WAR file to the Tomcat webapps directory
COPY Amazon.war ${DIR_PATH}/webapps/

# Expose the port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

