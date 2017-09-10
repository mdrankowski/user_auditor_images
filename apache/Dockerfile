FROM httpd:2.4

# install logstash beaver
RUN apt-get update && apt-get install -y python-dev gcc python-pip
RUN pip install beaver==36.2.1
RUN mkdir /etc/beaver/
COPY ./conf/beaver.conf /etc/beaver/
COPY ./conf/beaver.sh /etc/init.d/
RUN useradd -U beaver

# copy configuration files
COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

# add tr user
RUN useradd -U tr

# copy and define docker run bash script
COPY ./run.sh /opt/run.sh
CMD ["bash", "/opt/run.sh"]