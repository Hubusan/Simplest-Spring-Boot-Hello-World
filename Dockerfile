FROM openjdk:11-jre-slim-buster
VOLUME /tmp
ADD target/example.smallest-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
