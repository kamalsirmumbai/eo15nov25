# Use official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven wrapper and project files
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Give execute permission to Maven wrapper
RUN chmod +x mvnw

# Build the jar
RUN ./mvnw clean package -DskipTests

# Expose port 8080
EXPOSE 8080

# Run the jar
CMD ["java", "-jar", "target/evenodd-1.0.0.jar"]
