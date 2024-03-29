#!/bin/bash
# Use this script only for Ubuntu/Debian OS
sudo apt-get update
echo "################ Instal Package to use a repository over HTTPS ################"
sudo apt-get install ca-certificates curl gnupg lsb-release -y
echo "Done!"
echo "################ Add Docker official GPG key ################"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "Done!"
echo "################ set up the repository ################"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "Done!"
echo "################ Install Docker CE ################"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
echo "Done!"
echo "Lets Check Your Current Installation"
sudo docker -v
sudo docker compose version
