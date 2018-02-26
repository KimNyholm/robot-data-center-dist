#!/bin/bash

# install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

#install Node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get --yes install nodejs

#install Robot Data Center
sudo cp -r * /usr/local/robot-data-center
sudo cp robot-data-center.service /etc/systemd/system
sudo systemctl start robot-data-center
sudo systemctl enable robot-data-center

