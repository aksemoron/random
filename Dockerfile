FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/*.jar
COPY . app.jar
ENTRYPOINT ["java","-jar","/app.jar"]