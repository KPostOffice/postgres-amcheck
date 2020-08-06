FROM postgres:10.12
USER 0

ENV POSTGRES_DB postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV LANG=en_US.UTF-8
RUN apt-get update -y \
&& apt-get install -y postgresql-10-amcheck

COPY amcheck_install.sh /docker-entrypoint-initdb.d/

USER 1001
