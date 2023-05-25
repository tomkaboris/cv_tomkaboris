FROM nginx:alpine

RUN apk add python3-dev=3.6.9-r3 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.9/main && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN python -m pip install -U matplotlib

COPY . /usr/share/nginx/html
