#!/bin/sh
export DAGSTER_HOME=/opt/dagster/dagster_home

# RETRIES=5

# until psql -h $PG_HOST -U $PG_USER -d $PG_DATABASE -c "select 1" > /dev/null 2>&1 || [ $RETRIES -eq 0 ]; do
#   echo "Waiting for postgres server, $((RETRIES--)) remaining attempts..."
#   sleep 1
# done

# This block may be omitted if not packaging a repository with cron schedules:
####################################################################################################
# see: https://unix.stackexchange.com/a/453053 - fixes inflated hard link count
touch /etc/crontab /etc/cron.*/*

service cron start

# Add all schedules defined by the user
dagster schedule up
####################################################################################################

# Launch Dagit as a service
DAGSTER_HOME=/opt/dagster/dagster_home dagit -h 0.0.0.0 -p 3000 -w /opt/dagster/app/workspace.yaml