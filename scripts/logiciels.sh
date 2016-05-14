#!/bin/bash
# base.sh

# Install openjdk 8
echo "Install openjdk 8"
apt-get install -y openjdk-8-jdk &> /dev/null

# Install java 8
#sudo add-apt-repository ppa:webupd8team/java
  #sudo apt-get update
  #echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
  #sudo apt-get install -y oracle-java8-installer
#sudo apt-get install -y oracle-java8-set-default

# Install scala
echo "Install scala"
apt-get install -y scala &> /dev/null

# Install docker 
echo "Install docker"
apt-get install -y docker.io &> /dev/null

# Install pip
echo "Install pip"
apt-get install -y python-pip &> /dev/null

# Install Cassandra-driver
echo "Install Cassandra-driver"
pip install cassandra-driver &> /dev/null

# Install sbt
  #echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
  #sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
  #sudo apt-get update
  #sudo apt-get install -y sbt

# Install Lightbend activator
echo "Install Lightbend activator"
cd /opt
wget -–quiet https://downloads.typesafe.com/typesafe-activator/1.3.10/typesafe-activator-1.3.10.zip
unzip -q typesafe-activator-1.3.10.zip 
cd /opt/activator-dist-1.3.10/bin
#export PATH=$PATH:/opt/activator-dist-1.3.10/bin;
echo 'export PATH=$PATH:/opt/activator-dist-1.3.10/bin' > /etc/profile.d/lightbend.sh
source ~/.bashrc
chmod a+x activator
cd /opt/activator-dist-1.3.10
chgrp -hR vagrant bin
chmod 775 bin
##./activator

# Install Idea Intellij
echo "Installing intellij"
mkdir /opt/idea 
wget --quiet -O /opt/idea/ideaIC-2016.1.1.tar.gz http://download.jetbrains.com/idea/ideaIC-2016.1.1.tar.gz
cd /opt/idea
tar xfz /opt/idea/ideaIC-2016.1.1.tar.gz
# cd idea-IC-145.597.3/bin;
# sudo ./idea.sh;
