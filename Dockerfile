FROM maven:3.5-alpine as app
COPY hola-mundo /hola-mundo
WORKDIR /hola-mundo
RUN mvn install

FROM openjdk:8-alpine
COPY --from=app /hola-mundo/target/hola-mundo-1.0.jar /opt/.
CMD java -jar /opt/hola-mundo-1.0.jar
