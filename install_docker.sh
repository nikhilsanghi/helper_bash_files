#!/bin/sh
yes | sudo apt-get update
yes | sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
yes | curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
yes | sudo apt-get update
yes | sudo apt-get install docker-ce docker-ce-cli containerd.io
yes | sudo apt-get install docker-ce=5:20.10.8~3-0~ubuntu-focal docker-ce-cli=5:20.10.8~3-0~ubuntu-focal containerd.io
sudo chmod 666 /var/run/docker.sock
sudo docker run hello-world
docker version
