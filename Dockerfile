FROM python:3.8.2-slim-buster

WORKDIR /root/app

COPY src src
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT cd src && gunicorn --bind 0.0.0.0:8000 wsgi
