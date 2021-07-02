# syntax=docker/dockerfile:1
# start from base
FROM python:3.8-slim-buster
LABEL maintainer="Alok Singh mail.aloksingh@gmail.com"
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
CMD [ "python3", "./Sample_UI.py" ]