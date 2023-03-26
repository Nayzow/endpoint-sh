FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY pom.xml .
RUN apk add --no-cache maven
RUN mvn dependency:go-offline -B
COPY . .
RUN mvn package
EXPOSE 8080
CMD ["java", "-jar", "target/DocumentationApi-0.0.1-SNAPSHOT.jar"]
