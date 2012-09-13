#!/bin/bash

############################################################
# Sublime Installer                                        #
# Author:  Waldyr G. Araújo de Souza <waldyr.ar@gmail.com> #
# Licence: MIT                                             #
############################################################

echo "########################################"
echo "########## Sublime Unistaller ##########"
echo "########################################"

echo

version="Sublime 2.0.1"

echo "Removing $version folder"
sudo rm -r /opt/Sublime\ Text\ 2/

echo "Removing $version configuration files"
sudo rm -r ~/.config/sublime-text-2/

echo "Removing $version unity configuration"
sudo rm ~/.local/share/applications/sublime.desktop

echo "Removing $version shortcut"
sudo rm /usr/bin/sublime 

echo "Removing defaults.list's affected lines by $version"
sudo sed -i /=sublime-text-2.desktop/d ~/.local/share/applications/defaults.list

echo
echo "$version was totally removed from your computer!"
