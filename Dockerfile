FROM ubuntu 

RUN apt update
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt install -y vim
RUN apt install python3-pip -y

RUN pip install bs4
RUN pip install requests

COPY . /var/www/html/

RUN cd /var/www/html && python3 fetchdata.py

CMD ["apache2ctl", "-D", "FOREGROUND"]

