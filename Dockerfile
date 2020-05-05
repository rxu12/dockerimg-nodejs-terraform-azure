FROM ubuntu:18.04
MAINTAINER Ray X <rxuofficeworks@gmail.com>

USER root

# Make sure the package repository is up to date.
RUN apt-get update \
    && apt-get install -qy curl \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -qy nodejs \
    && apt-get install python-pip -qy \
    && apt-get install sudo -qy \
    # Cleanup old packages
    && apt-get -qy autoremove

# Install docker-compose
RUN pip install docker-compose~=1.18

# Install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
