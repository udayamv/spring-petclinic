FROM maven as build
WORKDIR /
COPY . /
RUN mvn package

FROM java:8-jre-alpine
WORKDIR /
COPY target/spring-petclinic-*.jar app
EXPOSE 8080 
CMD java -jar app
