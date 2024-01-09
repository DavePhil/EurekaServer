FROM openjdk:17-alpine
WORKDIR /app

# Install Spring Boot buildpacks
RUN apk add spring-boot-buildpacks

# Build application
RUN spring-boot:build-image --build-arg JAR_FILE=eurekaserver.jar

# Expose port
EXPOSE 910é

# Run application
CMD ["java", "-jar", "eurekaserver.jar"]