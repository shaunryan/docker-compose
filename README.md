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


Dagster with:
* cron scheduler
* postgres db
* rabbitMq
* 1 celery dagster worker
* dagit

### up & down

### RabbitMq

    http://localhost:15672/
    username: guest
    password: guest
    broker: pyamqp://guest:guest@rabbitmq:5672//

### Dagit

    http://localhost:3000/

### PostGres

    user: dagster
    password: dagster
    database: dagster
    host: localhost
    Port: 5432

Turn it on:
```bash
cd dagster
docker-compose up
```

Turn it off:
```bash
docker-compose down
```




Drop your code in the app folder and update the workspace yaml accordingly to point to your pipeline python file.
