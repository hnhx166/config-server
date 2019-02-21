FROM mytest:v1
RUN mkdir -p /bizwork/log && mkdir -p /bizwork/config-server
ADD ./target/config-server-0.0.1-SNAPSHOT.jar /bizwork/config-server
ENV JAVA_HOME /usr/local/jdk1.8.0_191
ENV PATH $JAVA_HOME/bin:$PATH

ENTRYPOINT java -jar /bizwork/config-server/config-server-0.0.1-SNAPSHOT.jar > config-server.log