FROM openjdk:17-alpine
WORKDIR /app

COPY target/eurekaserver.jar /app
CMD ["java","-jar","eurekaserver.jar"]