FROM ubuntu:20.04
RUN apt-get update && apt-get -y install wget gnupg2 software-properties-common && \
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add - && \
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add - && \
add-apt-repository "deb https://download.virtualbox.org/virtualbox/debian focal contrib" && \
apt-get -y install virtualbox-6.1 && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /root
CMD ["virtualbox"]
