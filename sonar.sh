#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.3.0.82913.zip
apt install unzip -y
unzip sonarqube-*.zip
mv sonarqube-* sonarqube
useradd -r -s /bin/false sonarqube
chown -R sonarqube:sonarqube /opt/sonarqube
chmod 777 sonarqube -R
su -sonar

#run this on server manually
#echo "user=admin & password=admin"
