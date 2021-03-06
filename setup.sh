#!/bin/bash
: <<docstring
This is intended to install all the common software, libs, packages, modules...
    that I commonly use, on a fresh Ubuntu installation
docstring

packages=[
    chromium-browser
]



# Chromium
sudo apt-get install -y chromium-browser

# Sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

# Terminator
sudo apt-get terminator
# TODO – configure terminator programatically

# Git
sudo apt-get install -y git

# Nodejs
sudo apt-get install -y nodejs-legacy
# npm
sudo apt-get install -y npm
# update nodejs using n and make a symbolic link
sudo npm cache clean -f
sudo npm install -g n
sudo n stable


sudo ln -sf /usr/local/n/versions/node/*/bin/node /usr/bin/node  # use * to be flexible with version changes
sudo n latest

# bower
npm install bower

# grunt
npm install grunt
sudo npm install -g grunt-cli

# python3-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y redis-server

# Postgresql
sudo apt-get install -y postgresql postgresql-contrib
sudo apt-get install -y python-psycopg2

sudo apt-get install -y libpq-dev
sudo apt-get install -y memcached

# for cairocffi
sudo apt-get install -y libffi-dev

sudo apt-get install -y libmemcached-dev

# pip installation and upgrade
sudo apt-get install -y python-pip
pip install --upgrade pip

# virtual env
pip install virtualenvwrapper

echo "export WORKON_HOME=~/Envs" >> ~/.bashrc
echo "source ~/.local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# TODO - have these configs
            # - bashrc aliases and branch highlighting code
            # - sublime text user settings and user preferences
            #

# curl
sudo apt-get install -y curl

# Install media codecs
curl ftp://ftp.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
echo "deb ftp://ftp.videolan.org/pub/debian/stable ./" | sudo tee /etc/apt/sources.list.d/libdvdcss.list
sudo apt-get update
# vlc and mplayer
sudo apt-get install -y vlc vlc-data vlc-plugin-pulse browser-plugin-vlc mplayer2
# restricted extras
sudo apt-get install -y ubuntu-restricted-extras
# full DVD support
sudo apt-get install -y libdvdcss2 libdvdnav4 libdvdread4
sudo /usr/share/doc/libdvdread4/install-css.sh
