FROM i386/ubuntu:14.04

LABEL author="Te-Wei Tsai <twtsaia@gmail.com>"

RUN apt update \
    && apt install -y ed build-essential g++-4.6 gcc vim \
    && rm -rf /var/lib/apt/lists/*

COPY mips-x86.linux-xgcc /mips-x86.linux-xgcc

# Set the default environment
SHELL ["/bin/bash", "-lc"]
WORKDIR /home
