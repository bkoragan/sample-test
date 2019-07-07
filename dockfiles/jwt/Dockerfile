FROM openjdk:8-jdk-alpine

RUN mkdir -p /opt/logs
RUN mkdir -p /appdynamics
RUN mkdir -p /opt/xerxes-jwt


#ADD target/xerxes-jwt-1.11.1-SNAPSHOT.jar /opt/xerxes-jwt/xerxes-jwt.jar
ADD /tmp/xerxes-jwt/*.jar /opt/xerxes-jwt/xerxes-jwt.jar

#ADD src/main/resources/application.properties /opt/xerxes-jwt/application.properties
#ADD startup.sh /startup.sh

#RUN chmod +x /startup.sh
 
RUN chgrp -R 5000 /opt/logs/
RUN chmod -R g+w /opt/logs/
 
#WORKDIR /
#EXPOSE 11002
 
ENV JAR_FILE=xerxes-jwt.jar
 
#ENTRYPOINT /startup.sh
ENTRYPOINT ["java","-jar","/opt/xerxes-jwt/xerxes-jwt.jar", "&>/dev/null", "&"]

#############################


##VOLUME /tmp
#ARG JAR_PATH
#WORKDIR $JAR_PATH
#COPY . /

##RUN cp jenkins:/Users/bkorag384/.jenkins/workspace/build-job/target/sample-test-0.1.jar /sample-test-0.1.jar

#ENTRYPOINT ["java","-jar","/target/xerxes-jwt-1.11.1-SNAPSHOT.jar"]

