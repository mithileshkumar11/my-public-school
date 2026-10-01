# ================================
# Stage 1: Build Spring Boot WAR
# ================================
FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /app

# Copy pom first to leverage Docker layer caching
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build the executable WAR
RUN mvn clean package -DskipTests

# ================================
# Stage 2: Run the application
# ================================
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy the generated WAR from the build stage
COPY --from=build /app/target/my-public-school-0.0.1-SNAPSHOT.war app.war

# Spring Boot default port
EXPOSE 8080

# Start Spring Boot executable WAR
ENTRYPOINT ["java", "-jar", "app.war"]
