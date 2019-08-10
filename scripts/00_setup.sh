#! /bin/bash
sudo apt-get update

sudo apt-get -y install build-essential git gnupg2

# install docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get -y install docker-ce
# sudo usermod -aG docker $USER

# install ruby
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

# install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# install azure-cli
sudo apt-get install -y libffi6 openssl python3-venv python3-pip

PYTHON_SYM=$(which python)
sudo rm $PYTHON_SYM
sudo ln -s $(which python3) $PYTHON_SYM

curl -L https://aka.ms/InstallAzureCli | bash
