#!/bin/bash

sudo apt-get install -y apt-transport-https

# install yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install -y yarn

sudo apt-get install -y nodejs

# run the project

yarn
yarn start
