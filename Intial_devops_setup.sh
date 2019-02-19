#!/bin/bash

sudo apt-get update -y && apt-get upgrade -y && apt-get clean

#to install openssh-server
sudo apt-get install openssh-server -y

#to install apache server
sudo apt-get install apache2 -y

#to install java
sudo apt install software-properties-common -y

sudo apt-get install default-jdk -y && \
     apt-get install default-jre -y

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
#chmod +x /opt/tomcat/tomcat9/bin/*

#run below command to setup tomcat_path
#echo 'export CATALINA_HOME=/opt/tomcat/tomcat9 >> ~/.bashrc

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
#sudo apt-get update && sudo apt-get install -y apt-transport-https && \
#curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add - && \
#echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list && \
#sudo apt-get update && \
#sudo apt-get install -y kubectl kubeadm kubelet
#echo kubectl version

#curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  #&& chmod +x minikube && \
  #sudo cp minikube /usr/local/bin && rm minikube
#echo minikube version

#Installing Ruby
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -#
#echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

#sudo apt-get update
#sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

#cd
#git clone https://github.com/rbenv/rbenv.git ~/.rbenv
#echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
#echo 'eval "$(rbenv init -)"' >> ~/.bashrc
#exec $SHELL

#git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
#echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
#exec $SHELL

#rbenv install 2.6.1
#rbenv global 2.6.1
#ruby -v

#gem install bundler

#Installing Rails
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs

#gem install rails -v 5.2.2

#rails -v

#Installing MySQL
#sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev

#Installing PostgreSQL
#sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
#wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
#sudo apt-get update
#sudo apt-get install -y postgresql-common
#sudo apt-get install -y postgresql-9.5 libpq-dev

# Instaliing Zentyal server on linux machine
curl -s download.zentyal.com/install | sudo sh

# to log in to the zentyal server we need to add user to admin group

sudo usermod -a -G admin username

# Installing openvpn
sudo apt install -y openvpn











