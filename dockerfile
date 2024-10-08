# https://stackoverflow.com/questions/25845538/how-to-use-sudo-inside-a-docker-container
FROM weibeld/ubuntu-networking

RUN apt-get update && \
      apt-get -y install sudo lshw

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo # Password : docker

USER docker
CMD /bin/bash
