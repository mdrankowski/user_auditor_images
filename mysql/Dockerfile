FROM mysql:5.7

# add tr user
RUN useradd -U tr

# add env vars for MySQL
ENV MYSQL_ROOT_PASSWORD 'test'
ENV MYSQL_DATA 'tourradar'
ENV MYSQL_USER 'tr'
ENV MYSQL_PASSWORD 'test'

COPY ./sql/db_create.sql /docker-entrypoint-initdb.d/