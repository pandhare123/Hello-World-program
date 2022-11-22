# Pull base image 
FROM  openjdk:latest
ADD /webapp/target/webapp.war /opt/app.war
WORKDIR /opt
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.war"]
