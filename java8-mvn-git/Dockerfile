#Should run as: docker run imagename mvn spring-boot:run

FROM ubuntu

# Set the working directory to /app
WORKDIR /app

# Copy the java
RUN mkdir -p /usr/local/java
ADD jdk-8u131-linux-x64.tar.gz /usr/local/java

# Configure java

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_131/jre/bin/java" 1 \
  && update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_131/bin/javac" 1 \
  && update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_131/bin/javaws" 1

RUN update-alternatives --set java /usr/local/java/jdk1.8.0_131/jre/bin/java \
 && update-alternatives --set javac /usr/local/java/jdk1.8.0_131/bin/javac \
 && update-alternatives --set javaws /usr/local/java/jdk1.8.0_131/bin/javaws

# Make port 8080 available to the world outside this container
# do docker inspect containerId to view the ip address of the container ...
EXPOSE 8080

# Define environment variable
ENV JAVA_HOME /usr/local/java/jdk1.8.0_131

# install git and maven the easy way 
# (TODO install from tar later...)
RUN apt-get update && apt-get install -y git && apt-get install -y maven 

# checkout src code and run app:
RUN git clone https://github.com/ruben056/websocket-stomp-dynamic-messaging.git
WORKDIR /app/websocket-stomp-dynamic-messaging
# allready build the package during the creating of the images ... that way the it will run/startup faster...
RUN mvn package

# Run app.py when the container launches
CMD ["/bin/bash"]
