FROM openjdk:8-jdk-alpine

RUN mkdir -p /opt/logs
RUN mkdir -p /appdynamics
RUN mkdir -p /opt/xerxes-ctrl


ADD target/xerxes-ctrl-1.11.1-SNAPSHOT.jar /opt/xerxes-ctrl/xerxes-ctrl.jar
#ADD src/main/resources/application.properties /opt/xerxes-ctrl/application.properties
ADD startup.sh /startup.sh

RUN chmod +x /startup.sh
 
RUN chgrp -R 5000 /opt/logs/
RUN chmod -R g+w /opt/logs/
 
#WORKDIR /
#EXPOSE 11002
 
ENV JAR_FILE=xerxes-ctrl.jar
 
#ENTRYPOINT /startup.sh
#ENTRYPOINT ["java","-jar","/opt/xerxes-ctrl/xerxes-ctrl.jar"]
ENTRYPOINT ["java","-jar","/opt/xerxes-ctrl/xerxes-ctrl.jar", "&>/dev/null", "&"]
#CMD nohup java -jar /opt/xerxes-ctrl/xerxes-ctrl.jar &
#ENTRYPOINT /startup.sh
