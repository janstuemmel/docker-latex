FROM blang/latex

MAINTAINER Jan Stümmel <info@janstuemmel.de>

RUN apt-get -y update && \
    apt-get -yq install biber && \
    apt-get -yq install locales dpkg wget wput curl zip tar rsync make

RUN wget https://github.com/jgm/pandoc/releases/download/1.18/pandoc-1.18-1-amd64.deb && \
    dpkg -i pandoc-1.18-1-amd64.deb

WORKDIR /data
VOLUME ["/data"]
