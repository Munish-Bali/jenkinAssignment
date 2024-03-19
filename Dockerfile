FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /jenproject/app
RUN mvn -f /jenkinproject/pom.xml clean package

FROM openjdk:11-jre-slim
COPY --from=build /jenkinproject/jenkinassignment/target/webapp.war /usr/local/tomcat/webapps
WORKDIR /app
COPY ${JAR_FILE} app.jar 
EXPOSE 8080
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

