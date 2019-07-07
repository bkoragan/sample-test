FROM openjdk:8-jdk-alpine
##VOLUME /tmp
#ARG JAR_FILE
ADD /var/lib/docker/tmp/sample-test-0.1.jar sample-test-0.1.jar
RUN bash -c 'touch /sample-test-0.1.jar'

##RUN cp jenkins:/Users/bkorag384/.jenkins/workspace/build-job/target/sample-test-0.1.jar /sample-test-0.1.jar
ENTRYPOINT ["java","-jar","/sample-test-0.1.jar"]
##"-Djava.security.egd=file:/dev/./urandom",

