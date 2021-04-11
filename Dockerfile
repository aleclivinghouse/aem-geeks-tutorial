FROM openjdk:8
EXPOSE 8080
ADD aem-geeks-tutorial.jar ./
ENTRYPOINT ["java", "-jar", "/aem-geeks-tutorial.jar"]