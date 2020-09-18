#!/bin/bash
#This script is for downloading and installing basic functions for the machine.
#This will mostly only work on Ubuntu 18.04 LTS and newer.
#Check if system is Ubuntu or Debian
function Install {
  # Install XFCE4-Desktop
  echo "Installing XFCE4-Desktop with extras."
  apt-get install -y xfce4
  apt-get install -y firefox
  apt-get install -y qbittorrent
  apt-get install -y gparted
  echo "Installing TightVNCServer"
  apt-get install -y tightvncserver
  apt-get install -y software-common-properties
  echo "Installing CURL, TAR, UNZIP and GIT"
  apt-get install -y curl tar unzip git
}

if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
then
  Install
else
  echo "You are not using a Ubuntu or Debian machine."
  echo "You are also not logged in as root. Please try again while logged in as root."
fi
