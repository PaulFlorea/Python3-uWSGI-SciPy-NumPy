FROM paulflorea/python3-uwsgi:alpine-test

# Installing scipy and numpy
RUN apk update && apk upgrade && apk add --no-cache --update\
        py3-numpy \
        py3-scipy \
        && rm -rf /var/cache/apk/* # Delete the cache folder to save some space
