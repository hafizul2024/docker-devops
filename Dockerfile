FROM openjdk:8
ADD target/harun-docker-project.jar harun-docker-project.jar
ENTRYPOINT ["java", "-jar","harun-docker-project.jar"]
EXPOSE 8080
