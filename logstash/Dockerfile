FROM mdrankowski/tourradar:logstash_base

# install jdbc output plugin
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-jdbc

# get jdbc mysql connector
RUN mkdir -p /usr/share/logstash/vendor/jar/jdbc/
COPY ./connectors/mysql-connector-java-5.1.44-bin.jar /usr/share/logstash/vendor/jar/jdbc/

# copy pipelines
RUN rm -rf /usr/share/logstash/pipeline/*
COPY ./pipeline/apache.conf /usr/share/logstash/pipeline/

COPY ./run.sh /opt/run.sh
CMD ["bash", "/opt/run.sh"]




