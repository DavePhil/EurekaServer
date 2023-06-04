FROM openjdk:8
RUN apk update && apk bash
WORKDIR /app

COPY /target/eurekaserver.jar /app
CMD ["java","-jar","eurekaserver.jar"]