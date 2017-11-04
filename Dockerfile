FROM python:3

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.0.0/wait /wait
RUN chmod +x /wait

ADD ./config /config
ADD ./src /src
WORKDIR /src

RUN pip install -r /config/requirements.txt

ENV PYTHON_OPTS ''

CMD /wait && python3 $PYTHON_OPTS manage.py runserver 0.0.0.0:8000
