FROM dillonco/testdillons

RUN echo @testing http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories  
RUN apk add --no-cache --update \
        py-numpy \
        py-scipy@testing