FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/*.jar
COPY app/ app.jar
WORKDIR app/
ENTRYPOINT ["java","-jar","app/app.jar"]