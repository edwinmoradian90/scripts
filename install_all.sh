#!/bin/bash

function installation_complete () {
    name="$1"
    if [ $(which ${name}) ];
    then 
        printf "\n${name} installed\n\n"
    else 
        printf "\nAn error occurred installing ${name}\n\n"
    fi
}

sudo apt update -y
sudo apt upgrade -y
sudo apt install --fix-broken
sudo apt autoremove

# NODE
sudo apt install nodejs 
installation_complete 'nodejs'

# RBENV
sudo apt install git curl autoconf bison build-essential \
    libssl-dev libyaml-dev libreadline6-dev zlib1g-dev \
    libncurses5-dev libffi-dev libgdbm5 libgdbm-dev libdb-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
installation_complete 'rbenv'

# RUBY
rbenv install 2.7.1 --verbose
rbenv global 2.7.1 --verbose
installation_complete 'ruby'

# RAILS
gem install rails 
installation_complete 'rails'

# PYTHON & PIP
sudo apt install python3 python3-pip
installation_complete 'python3'

# POSTGRES
sudo apt install postgresql postgresql-contrib
installation_complete 'psql'

printf "\nInstallations complete\n\n"


