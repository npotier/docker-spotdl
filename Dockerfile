FROM python:3.6-alpine

RUN apk add \
    ffmpeg \
    build-base libressl libffi-dev libressl-dev libxslt-dev libxml2-dev xmlsec-dev xmlsec

RUN pip install spotdl

RUN mkdir /music
WORKDIR /music

ENTRYPOINT ["spotdl"]