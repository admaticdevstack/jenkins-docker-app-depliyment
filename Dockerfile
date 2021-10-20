FROM ubuntu:18.04
MAINTAINER Saravanan Sundaramoorthy <info@admatic.in>
RUN apt update
RUN apt install python2.7 -y
RUN apt install python-pip -y
ADD requirements.txt /opt
ADD app.py /opt
WORKDIR /opt
RUN pip install -r requirements.txt 
CMD python2 app.py
