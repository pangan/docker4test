FROM ubuntu:14.04.2

MAINTAINER pangan@gmail.com


ENV HOME /root

RUN apt-get install -y python-setuptools
RUN apt-get install -y python git


RUN mkdir /opt/docker4test

WORKDIR /opt/docker4test

RUN git clone https://github.com/pangan/app4docker.git .

RUN easy_install pip
RUN pip install --upgrade pip
RUN pip install -r requirments.txt

CMD ["./run.sh"]