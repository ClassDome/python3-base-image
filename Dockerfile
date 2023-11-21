FROM alpine:3.18.4

RUN apk update # Update Alpine Linux Repos

RUN apk --no-cache add bash=5.2.15-r5 # Install BASH (5.2.15-r5)
RUN apk --no-cache add curl=8.4.0-r0 # Install cURL (8.4.0-r0)
RUN apk --no-cache add python3=3.11.6-r0 # Install Python3 (3.11.6-r0)

RUN python3 -m ensurepip # Ensure PIP is installed

RUN pip3 install pip==23.3.1 # Version-pin PIP (23.3.1)
RUN pip3 install setuptools==69.0.1 # Version-pin SetupTools (69.0.1)

