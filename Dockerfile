# siesta docker container
#
# docker build --tag=siesta:4.x.y . (4.x.y is the same as SIESTA_VERSION)
# docker run --name siesta siesta:4.x.y
#

FROM httpd:2.4

# Set to the Siesta version you use in the image
ENV SIESTA_VERSION 4.1.1

LABEL maintainer="Nils Dehl <mail@nils-dehl.de>" \
      version=${SIESTA_VERSION}

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y xvfb libxrender-dev libasound2 libdbus-glib-1-2 libgtk2.0-0

ADD image/root/usr/share/htdocs /usr/local/apache2/htdocs/

EXPOSE 80
