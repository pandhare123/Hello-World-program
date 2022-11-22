# Pull base image 
FROM  openjdk:latest
ADD target/*.jar /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
