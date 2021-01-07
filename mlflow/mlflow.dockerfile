FROM python:3.7-slim

RUN pip install psycopg2-binary && \
    pip install mlflow[extras]

ENTRYPOINT ["mlflow", "server"]