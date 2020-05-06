FROM openjdk:8-jre-alpine

VOLUME /tmp
ADD id2.jar /opt/id2/
EXPOSE 8080
WORKDIR /opt/id2/
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-Xms512m", "-Xmx1g", "-jar", "id2.jar"]
