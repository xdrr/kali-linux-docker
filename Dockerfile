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
RUN apt install -y \
	nmap hydra cutycapt

## MiTM
RUN apt install -y \
	bettercap

## Shell
RUN apt install -y \
	powerline

## Persistent Storage
RUN mkdir -p /root/data

## Startup SCripts
ADD scripts/ssh /ssh
RUN chmod u+x /ssh

## Launch
WORKDIR /root/data
ADD scripts/launch.py /launch.py
RUN chmod u+x /launch.py
ENTRYPOINT /launch.py
