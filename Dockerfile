FROM kalilinux/kali-linux-docker
MAINTAINER @xdrr

## Full Kali
RUN apt update && apt upgrade -y
RUN apt install -y \
    kali-linux-all

## Optional Forensics Tools
RUN apt install -y \
    forensics-all

## Extra Tools Prerequisites
RUN apt install nmap hydra cutycapt

## Persistent Storage
RUN mkdir -p /root/data

## Startup SCripts
ADD scripts/ssh /ssh
RUN chmod u+x /ssh
