 FROM java:8
 EXPOSE 8080
 ADD docker/test.jar test.jar
 ENTRYPOINT ["java","-jar","test.jar"]