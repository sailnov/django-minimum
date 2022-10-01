FROM python:3.9-bullseye
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
    && rm -rf /var/lib/apt/lists/*
    
RUN groupadd --gid 1000 pyt \
    && useradd --uid 1000 --gid 1000 --shell /bin/bash --create-home pyt \
    && mkdir /app \
    && chown -R pyt:pyt /app
    
RUN git clone https://github.com/sailnov/django-minimum.git

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


WORKDIR /app
USER pyt
