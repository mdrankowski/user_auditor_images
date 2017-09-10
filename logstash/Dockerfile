FROM docker.elastic.co/logstash/logstash:5.5.2

# install jdbc output plugin
RUN logstash-plugin install logstash-output-jdbc

# get jdbc mysql connector
RUN mkdir -p /usr/share/logstash/vendor/jar/jdbc/
COPY ./connectors/mysql-connector-java-5.1.44-bin.jar /usr/share/logstash/vendor/jar/jdbc/

# copy pipelines
RUN rm -rf /usr/share/logstash/pipeline/*
COPY ./pipeline/* /usr/share/logstash/pipeline/




