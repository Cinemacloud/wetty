#!/bin/bash
echo "*********************** Install Git"
sudo yum install git 
echo "*********************** Git installed"
echo "*********************** Install NodeJS"
sudo yum install epel-release 
sudo yum install nodejs 
echo " *********************** NodeJS insalled"
echo "*********************** Install NPM"
sudo yum install npm 
echo "*********************** NPM insalled"
echo "Get wetty"
git clone https://github.com/krishnasrinivas/wetty
cd wetty 
npm install
echo "wetty installed"
firewall-cmd --add-port=3000/tcp
node app.js -p 3000 
echo "Wetty Running on TCP port 3000      [OK]"
