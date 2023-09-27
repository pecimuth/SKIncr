#we are using ubuntu base image
FROM  --platform=linux/amd64   ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

# installing requirements to get and extract prebuilt binaries
RUN apt-get update && apt-get install -y \
 xz-utils \
 curl \
 build-essential \
 git \
 emacs \
 clang-10 \
 && rm -rf /var/lib/apt/lists/* \

#start the container from bash
CMD [ "/bin/bash" ]
