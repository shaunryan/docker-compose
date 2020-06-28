#!/bin/sh
export DAGSTER_HOME=/opt/dagster/dagster_home

cd /opt/dagster/app/

# need a better wait than this but this is ok for now.
sleep 15s



dagster-celery worker start --config-yaml /opt/dagster/dagster_home/celery_config.yaml 


