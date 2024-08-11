# Build Stage
FROM openjdk:24-jdk AS build

LABEL maintainer="java.net"

# Copy the jar file from the build context to the image
COPY target/springboot-docker-nurbol-0.0.1-SNAPSHOT.jar /app/springboot-docker-project.jar

# Final Stage
FROM openjdk:24-slim

LABEL maintainer="java.net"

# Copy the jar file from the build stage
COPY --from=build /app/springboot-docker-project.jar /app/springboot-docker-project.jar

# Set the working directory
WORKDIR /app

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "springboot-docker-project.jar"]
