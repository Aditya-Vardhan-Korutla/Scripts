#!/bin/bash
set -e
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y openjdk-21-jdk -y
java -version
curl -fsSL https://pkg.origin.jenkins.io/debian-stable/jenkins.io-2026.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.origin.jenkins.io/debian-stable/ binary/" | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update -y
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

#https://www.geeksforgeeks.org/devops/install-jenkins-in-ubuntu/
#https://www.jenkins.io/doc/book/installing/linux/#debianubuntu
