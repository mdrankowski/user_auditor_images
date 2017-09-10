FROM httpd:2.4

# install logstash beave and add tr user
RUN apt-get update && apt-get install -y python-dev gcc python-pip && \
    pip install beaver==36.2.1 && \
    mkdir /etc/beaver/ && \
    useradd -U beaver && \
    useradd -U tr

COPY ./conf/beaver.conf /etc/beaver/
COPY ./conf/beaver.sh /etc/init.d/

# copy configuration files
COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

# copy and define docker run bash script
COPY ./run.sh /opt/run.sh
CMD ["bash", "/opt/run.sh"]