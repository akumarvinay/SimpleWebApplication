FROM tomcat:8-jre8
#Take the tomcat8 and jre8 image 

# Clean the webapps directory.
#The intention is to remove the default Contexts that includes Manager
#RUN rm -r /usr/local/tomcat/webapps/*

RUN echo "In docker file : pwd location" pwd

#RUN mkdir /usr/local/tomcat/webapps/SampleWebApp

# Deploy the application(war) into tomcat
#COPY  ./target/SampleWebApp.war   #/usr/local/tomcat/webapps/SampleWebApp/
ADD /var/lib/jenkins/workspace/FirstMavenProject/target/SimpleWebApplication.war    /usr/local/tomcat/webapps/

#EXPOSE 8080

# Start Tomcat and redirect all logs to stdout

#CMD ["catalina.sh", "run"]

