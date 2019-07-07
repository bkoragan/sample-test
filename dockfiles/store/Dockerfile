FROM openjdk:8-jdk-alpine

RUN mkdir -p /opt/logs
RUN mkdir -p /appdynamics
RUN mkdir -p /opt/xerxes-store


ADD target/xerxes-store-1.11.1-SNAPSHOT.jar /opt/xerxes-store/xerxes-store.jar
#ADD src/main/resources/application.properties /opt/xerxes-store/application.properties
#ADD startup.sh /startup.sh

#RUN chmod +x /startup.sh
 
RUN chgrp -R 5000 /opt/logs/
RUN chmod -R g+w /opt/logs/
 
#WORKDIR /
#EXPOSE 11002
 
ENV JAR_FILE=xerxes-store.jar
 
#ENTRYPOINT /startup.sh
ENTRYPOINT ["java","-jar","/opt/xerxes-store/xerxes-store.jar", "&>/dev/null", "&"]