FROM openjdk:8
EXPOSE 8080
ADD target/aem-geeks-tutorial.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["java", "-jar", "/aem-geeks-tutorial.jar"]