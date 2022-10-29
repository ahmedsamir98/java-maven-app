FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY /var/jenkins_home/workspace/java-maven-build/target/java-maven-app-1.1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]