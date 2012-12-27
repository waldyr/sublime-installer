#!/bin/bash

shopt -s nocaseglob
set -e

script_runner=$(whoami) 
sublime_installer_path=$(cd && pwd)/sublime_installer
log_file="$sublime_installer_path/install.log"

control_c()
{
    echo -en "\n\n*** Exiting ***\n\n"
        exit 1
}

trap control_c SIGINT

clear

echo "#######################################"
echo "########## Sublime Installer ##########"
echo "#######################################"

# determine the distro
if [[ $MACHTYPE = *linux* ]] ; then
  distro_sig=$(cat /etc/issue)
  if [[ $distro_sig =~ ubuntu ]] ; then
    distro="ubuntu"
  else
    echo -e "\nSublime Installer currently only supports Ubuntu\n"
    exit 1
  fi
fi

# check if user is root
if [ $script_runner == "root" ] ; then
  echo -e "\nThis script must be run as a normal user with sudo privileges\n"
  exit 1
fi

echo -e "\n\n"
echo "run tail -f $log_file in a new terminal to watch the install"

echo -e "\n"
echo "What this script gets you:"
echo " * Sublime Text Editor"
echo " * Sublime's Custom Icon"
echo " * Package Control"
echo " * Zen Coding"

echo -e "\nThis script is always changing."
echo "Make sure you got it from https://github.com/waldyr/Sublime-Installer"

# Check if the user has sudo privileges.
sudo -v >/dev/null 2>&1 || { echo $script_runner has no sudo privileges ; exit 1; }

echo -e "\n=> Creating install dir..."
cd && mkdir -p sublime_installer/src && cd sublime_installer && touch install.log
echo "==> done..."

echo -e "\n=> Downloading and running recipe for $distro...\n"
wget --no-check-certificate -O $sublime_installer_path/src/$distro.sh https://raw.github.com/waldyr/Sublime-Installer/master/recipes/$distro.sh && cd $sublime_installer_path/src && bash $distro.sh $sublime_installer_path $log_file

echo -e "\n#################################"
echo    "### Installation is complete! ###"
echo -e "#################################\n"

echo -e "\n !!! logout and back in to access Sublime !!!\n"
