# Docker-Compose Library

Library of docker-compose setups for local development and learning:

## Elasticsearch

./elasticsearch/

1. Single node elasticsearch with XPACK enabled. Anonymous user is enabled with http ssl. Certs are created automatically in the manifest.

## Pulsar

./pulsar/

1. Standalone pulsar with the pulsar management UI

## Dagster

./dagster/

Dagster with cron scheduler and postgres db - todo add celery and queue.
Drop your code in the app folder and update the workspace yaml accordingly to point to your pipeline python file.
