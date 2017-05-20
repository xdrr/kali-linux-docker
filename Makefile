all:
	sudo docker build -t kali-linux-ultimate:latest .
run:
	mkdir -p $(PWD)/data && \
		sudo docker run -v $(PWD)/data:/root/data -ti kali-linux-ultimate /bin/bash

run-app:
	mkdir -p $(PWD)/data && \
		sudo docker run -p 2222:22 -v $(PWD)/data:/root/data kali-linux-ultimate /ssh

