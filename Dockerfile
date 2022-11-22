# Pull base image 
FROM  openjdk:latest
ADD /webapp/target/webapp.war /opt/app.war

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
