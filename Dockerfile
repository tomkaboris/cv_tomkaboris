FROM nginx:alpine

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN apk update && apk add python3-dev gcc libc-dev
RUN python3 -m ensurepip
RUN pip3 install bs4
RUN pip3 install requests

COPY . /usr/share/nginx/html

RUN python /usr/share/nginx/html/fetchdata.py
