FROM openjdk:8-jdk-alpine

RUN mkdir -p /opt/logs
RUN mkdir -p /appdynamics
RUN mkdir -p /opt/xerxes-saml


#ADD target/xerxes-saml-1.11.1-SNAPSHOT.jar /opt/xerxes-saml/xerxes-saml.jar
ADD /tmp/xerxes-saml/*.jar /opt/xerxes-saml/xerxes-saml.jar
#ADD src/main/resources/application.properties /opt/xerxes-saml/application.properties
#ADD startup.sh /startup.sh

#RUN chmod +x /startup.sh
 
RUN chgrp -R 5000 /opt/logs/
RUN chmod -R g+w /opt/logs/
 
#WORKDIR /
#EXPOSE 11002
 
ENV JAR_FILE=xerxes-saml.jar
 
#ENTRYPOINT /startup.sh
ENTRYPOINT ["java","-jar","/opt/xerxes-saml/xerxes-saml.jar", "&>/dev/null", "&"]
