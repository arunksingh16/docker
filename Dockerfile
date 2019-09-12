 FROM java:8
 EXPOSE 8080
 ADD docker/HelloWorld-0.0.1-SNAPSHOT.jar test.jar
 ENTRYPOINT ["java","-jar","test.jar"]
