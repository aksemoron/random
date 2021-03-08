FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/*.jar
COPY . app
WORKDIR app/
ENTRYPOINT ["java","-jar","/app.jar"]