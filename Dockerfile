FROM puckel/docker-airflow:1.10.2

RUN $(which pip) install --user kubernetes

COPY plugins /usr/local/airflow/plugins

COPY script/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]