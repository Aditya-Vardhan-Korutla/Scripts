sudo apt install openjdk-21-jdk -y
java --version
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.117/bin/apache-tomcat-9.0.117.tar.gz
sudo mkdir /opt/tomcat
sudo tar -xvzf apache-tomcat-9.0.117.tar.gz -C /opt/tomcat --strip-components=1
sudo chown -R tomcat:tomcat /opt/tomcat
sudo chmod g+x /opt/tomcat/conf

#https://www.layerstack.com/resources/tutorials/how-to-install-apachetomcat-on-ubuntu24
