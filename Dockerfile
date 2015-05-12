FROM debian:latest
MAINTAINER Ejz <ejz@ya.ru>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get -y install wget gcc build-essential
RUN wget --no-check-certificate -q "https://www.inet.no/dante/files/dante-1.4.1.tar.gz"
RUN gzip -dc dante-*.tar.gz | tar xvf -
RUN cd dante-*
RUN ./configure && make && make install
ADD ./danted.conf /etc/danted.conf

EXPOSE 1080
CMD ["/usr/local/sbin/sockd", "-d", "-f", "/etc/danted.conf"]
