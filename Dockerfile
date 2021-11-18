FROM openjdk:8-jdk-alpine
COPY ./target/store.jar store.jar
CMD ["java","-jar","store.jar"]


