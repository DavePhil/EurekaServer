FROM openjdk:17-alpine
WORKDIR /app
EXPOSE 9102
COPY target/eurekaserver.jar /app
CMD ["java","-jar","eurekaserver.jar"]