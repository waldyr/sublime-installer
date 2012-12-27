#!/bin/bash

script_runner=$(whoami)
sublime_installer_path=$1
log_file=$2

echo "Install as ppa or download portable version?"
echo "=> 1. Portable version"
echo "=> 2. PPA version"
echo -n "Type [1 or 2]? "
read whichSublime

if [[ $whichSublime -eq 1 ]] ; then

  krnl=$(uname -i)
  echo -e "\n=> Downloading Sublime Text Editor 2..."
  if [[ $krnl = 'i386' ]] ; then
    wget -NP $sublime_installer_path/src http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.tar.bz2 >> $log_file 2>&1
  else
    wget -NP $sublime_installer_path/src http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2 >> $log_file 2>&1
  fi
  echo -e "==> done..."

  echo -e "\n=> Extracting..."
  tar xjf $sublime_installer_path/src/Sublime*.tar.bz2 >> $log_file 2>&1
  echo -e "==> done..."

  echo -e "\n=> Creating a folder in $sublime_installer_path..."
  sudo cp -aR $sublime_installer_path/src/Sublime\ Text\ 2 $sublime_installer_path >> $log_file 2>&1
  echo -e "==> done..."

elif [[ $whichSublime -eq 2 ]] ; then

  echo -e "\nUsing apt-get for package installation\n"

  echo -e "\n=> Adding Sublime Text Editor 2 as a ppa..."
  sudo add-apt-repository ppa:webupd8team/sublime-text-2 >> $log_file 2>&1
  echo -e "==> done..."

  echo -e "\n=> Download packages..."
  sudo apt-get update
  echo -e "==> done..."

  echo -e "\n=> Installing Sublime Text Editor..."
  sudo apt-get install sublime-text
  echo -e "==> done..."

else

  echo -e "\n\n!!! You must choose between PPA or Portable version !!!"
  exit 1

fi
