# Pull base image 
FROM  openjdk:latest
ADD  target/webapp.war /app.war

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
