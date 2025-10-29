FROM innersource-artefacts-docker.lloydsbanking.cloud/ingested/python:3.11-slim AS builder
WORKDIR /python-pipeline-samples
ADD . /python-pipeline-samples
RUN pip install -r requirements.txt
CMD ["python3", "./app.py"]

