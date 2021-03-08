FROM adoptopenjdk/openjdk11:alpine-jre
ENTRYPOINT ["java","-jar","/app.jar"]