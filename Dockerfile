FROM openjdk:17
ADD target/bankapp-0.0.1-SNAPSHOT.jar bankapp-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/bankapp-0.0.1-SNAPSHOT.jar"]
