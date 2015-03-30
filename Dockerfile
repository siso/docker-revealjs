FROM ubuntu:14.04
MAINTAINER Simone Soldateschi <simone.soldateschi@gmail.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get -y dist-upgrade

RUN apt-get -qqy install git nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install reveal.js
WORKDIR /opt
RUN git clone https://github.com/hakimel/reveal.js.git
WORKDIR /opt/reveal.js
RUN npm install -g grunt-cli
RUN npm install
RUN sed -i "s/port: port/port: port,\n\t\t\t\t\thostname: \'\'/g" Gruntfile.js

# Add content
RUN mkdir /opt/reveal.js/slide-deck

WORKDIR /opt/reveal.js

EXPOSE 8000

CMD [ "grunt", "serve" ]
