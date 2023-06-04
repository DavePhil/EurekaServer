FROM openjdk:8
ADD target/eurekaserver.jar eurekaserver.jar
ENTRYPOINT["java","-jar","eurekaserver.jar"]