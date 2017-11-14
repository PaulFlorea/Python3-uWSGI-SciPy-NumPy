FROM python3-uwsgi:test

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories;\
    echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories;\
    apk upgrade --update-cache --available

RUN apk update && apk upgrade && apk add --no-cache --update\
        py3-numpy\
        py3-scipy