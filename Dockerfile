# Pull base image 
FROM  openjdk:latest
ADD target/1.0-SNAPSHOT.jar /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
