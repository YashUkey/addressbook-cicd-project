FROM openjdk:8
EXPOSE 80
COPY target/addressbook.jar addressbook.jar
ENTRYPOINT ["java","-jar","/addressbook.jar"]
