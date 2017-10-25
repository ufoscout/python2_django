FROM python:2

ADD ./config /config

RUN mkdir /src
WORKDIR /src

RUN pip install -r /config/requirements.txt
