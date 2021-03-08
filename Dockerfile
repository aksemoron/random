FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/*.jar
COPY . app.jar
WORKDIR app/
RUN npm run build
ENTRYPOINT ["java","-jar","/app.jar"]