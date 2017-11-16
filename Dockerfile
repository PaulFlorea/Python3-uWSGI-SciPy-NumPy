FROM paulflorea/python3-uwsgi:alpine-test

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories;\
    echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories;\
    apk upgrade --update-cache --available

# Installing scipy and numpy
RUN apk update && apk upgrade && apk add --no-cache --update\
        py3-numpy \
        py3-scipy \
        && rm -rf /var/cache/apk/* # Delete the cache folder to save some space
