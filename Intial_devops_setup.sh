#!/bin/bash

#sudo apt-get update -y && apt-get upgrade -y && apt-get clean

#to install openssh-server
#sudo apt-get install openssh-server -y

#to install apache server
#sudo apt-get install apache2 -y

#to install java
#sudo apt install software-properties-common -y

#sudo apt-get install default-jdk -y && \
     #apt-get install default-jre -y

#to know the java path
#sudo update-alternatives --config java

#run below command to setup java_path
#nano /etc/environment

#paste below config for setup the java_path
#JAVA_HOME="usr/lib/jvm/jdk_path"
#nano ~/.bashrc
#paste below config in bashrc file
#export JAVA_HOME=/usr/lib/jvm/jdk_path
#export PATH=$JAVA_HOME/bin:$PATH

#run below command to configure the java_path
#source ~/.bashrc
#echo $JAVA_HOME

#sudo mkdir /opt/maven

#cd /opt/maven && \
   #wget http://mirrors.estointernet.in/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz && \
   #tar -xvf apache-maven-3.6.0-bin.tar.gz && \
   #mv apache-maven-3.6.0/ apache-maven/

#run below command for setup maven path
#cd /etc/profile.d/
#vim maven.sh

#paste below comfig for maven
# Apache Maven Environment Variables
# MAVEN_HOME for Maven 1 - M2_HOME for Maven 2
#export JAVA_HOME=/usr/lib/jvm/jdk_path
#export M2_HOME=/opt/maven_path
#export MAVEN_HOME=/opt/apache-maven
#export PATH=${M2_HOME}/bin:${PATH}

#run below command to configure the maven_path
#chmod +x maven.sh
#source maven.sh
#mvn -version

#sudo mkdir /opt/tomcat && \
     #cd /opt/tomcat/ && wget http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.14/bin/apache-tomcat-9.0.14.tar.gz && \
     #tar -xvf apache-tomcat-9.0.14.tar.gz && mv  apache-tomcat-9.0.14/ tomcat9/

#granting execute permissions for all files in bin folder
#chmod +x /opt/tomcat/bin/*

#run below command to setup tomcat_path
#nano ~/.bashrc

#paste below config to run tomcat server
#export CATALINA_HOME=/opt/"tomcat_path"

#run below command to config the tomcat
#source ~/.bashrc
#echo $CATALINA_HOME

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

docker --version
# kubernetes setup
sudo apt-get update && sudo apt-get install -y apt-transport-https && \
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list && \
sudo apt-get update && \
sudo apt-get install -y kubectl kubeadm kubelet
echo kubectl version

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube && \
  sudo cp minikube /usr/local/bin && rm minikube
echo minikube vresion
