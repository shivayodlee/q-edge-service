FROM maven:3.5-jdk-8 AS build
COPY src /usr/q-edge-service/src
COPY pom.xml /usr/q-edge-service
RUN mvn -f /usr/q-edge-service/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://mongodb:27017/glarimy","-jar","/usr/q-edge-service/target/q-edge-service-1.0.0.jar"] 