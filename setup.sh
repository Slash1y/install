#!/bin/bash

#This script is for downloading and installing basic functions for the machine.
#This will mostly only work on Ubuntu 18.04 LTS and newer.

#Check if system is Ubuntu or Debian
if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
then
  #Check if you are logged in as root
  if ["`id -un`" == "root"]
    Install
  else
    echo "You are not logged in as root. Login to root and try again."
else
  echo "You are not using a Ubuntu or Debian machine."
fi

Install() {
  # Install XFCE4-Desktop
  echo "Installing XFCE4-Desktop with extras."
  apt-get install xfce4 -y
  apt-get install firefox -y
  apt-get install qbittorrent -y
  apt-get install gparted -y
  echo "Installing TightVNCServer"
  apt-get install tightvncserver -y
  apt-get install software-common-properties -y
  echo "Installing CURL, TAR, UNZIP and GIT"
  apt-get install curl tar unzip git
}
