#!/bin/sh
export DAGSTER_HOME=/opt/dagster/dagster_home

# This block may be omitted if not packaging a repository with cron schedules:
####################################################################################################
# see: https://unix.stackexchange.com/a/453053 - fixes inflated hard link count
touch /etc/crontab /etc/cron.*/*

# need a better wait than this but this is ok for now.
sleep 25s

service cron start

# Add all schedules defined by the user
dagster schedule up
####################################################################################################

# Launch Dagit as a service
DAGSTER_HOME=/opt/dagster/dagster_home dagit -h 0.0.0.0 -p 3000 -w /opt/dagster/app/workspace.yaml