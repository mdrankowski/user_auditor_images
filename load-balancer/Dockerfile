FROM haproxy:1.7-alpine

# copy configuration file
COPY ./conf/haproxy.conf /usr/local/etc/haproxy/haproxy.cfg

# add tr user
RUN addgroup -S tr && adduser -S -g tr tr

RUN mkdir /run/haproxy/