FROM ubuntu:14.04
MAINTAINER Ejz <ejz@ya.ru>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install wget
RUN wget -q "https://www.inet.no/dante/files/dante-1.4.1.tar.gz"
RUN gzip -dc dante-*.tar.gz | tar xvf -
RUN cd dante-*
RUN ./configure && make && make install

EXPOSE 1080
CMD ["/usr/sbin/sockd", "-D"]
