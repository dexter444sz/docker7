FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install default-jdk -y maven -y git -y
WORKDIR /home/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/boxfuse-sample-java-war-hello/
RUN mvn package
RUN cp /home/boxfuse-sample-java-war-hello/target/hello-1.0.war /home/