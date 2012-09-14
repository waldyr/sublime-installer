#!/bin/bash

############################################################
# Sublime Installer                                        #
# Author:  Waldyr G. Araújo de Souza <waldyr.ar@gmail.com> #
# Licence: MIT                                             #
############################################################

echo "#######################################"
echo "########## Sublime Installer ##########"
echo "#######################################"
echo

cd /tmp

version="Sublime 2.0.1"
krnl=$(uname -i)

echo "Downloading $version, please wait..."
if [ $krnl = 'i386' ] ; then
  wget -qNP /tmp/ http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.tar.bz2
else
  wget -qNP /tmp/ http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2
fi

echo "Extracting $version, please wait..."
tar xjf /tmp/Sublime*.tar.bz2
sudo cp -aR /tmp/Sublime\ Text\ 2 /opt/

echo "Creating $version terminal shortcut"
rm -r /tmp/Sublime\ Text\ 2*
sudo ln -sf /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

echo "Configuring unity launcher"
cat > ~/.local/share/applications/sublime.desktop <<END_DESKTOP
[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=Sublime Text 2
GenericName=Text Editor
Comment=Sublime Text Editor
Exec=sublime -w %U
Icon=/opt/Sublime Text 2/Icon/256x256/sublime_text.png
Terminal=false
Type=Application
Categories=GNOME;Application;GTK;Utility;TextEditor;IDE;Development
MimeType=text/plain=sublime-text-2.desktop;text/html=sublime-text-2.desktop;text/css=sublime-text-2.desktop;text/mathml=sublime-text-2.desktop;text/x-sql=sublime-text-2.desktop;text/x-diff=sublime-text-2.desktop;text/x-chdr=sublime-text-2.desktop;text/x-csrc=sublime-text-2.desktop;text/x-c++hdr=sublime-text-2.desktop;text/x-c++src=sublime-text-2.desktop;text/x-dtd=sublime-text-2.desktop;text/x-java=sublime-text-2.desktop;text/x-dsrc=sublime-text-2.desktop;text/x-pascal=sublime-text-2.desktop;text/x-perl=sublime-text-2.desktop;text/x-python=sublime-text-2.desktop;application/x-php=sublime-text-2.desktop;application/x-httpd-php3=sublime-text-2.desktop;application/x-httpd-php4=sublime-text-2.desktop;application/x-httpd-php5=sublime-text-2.desktop;application/xml=sublime-text-2.desktop;application/javascript=sublime-text-2.desktop;application/x-perl=sublime-text-2.desktop;x-directory/normal=sublime-text-2.desktop;inode/directory=sublime-text-2.desktop;
X-Ayatana-Desktop-Shortcuts=NewWindow

[NewWindow Shortcut Group]
Name=New Window
Exec=sublime -n %U
TargetEnvironment=Unity
END_DESKTOP

echo "Configuring preferences"
cat > ~/.local/share/applications/defaults.list <<END_DEFAULTS
[Default Applications]
text/plain=sublime-text-2.desktop
text/html=sublime-text-2.desktop
text/css=sublime-text-2.desktop
text/mathml=sublime-text-2.desktop
text/x-sql=sublime-text-2.desktop
text/x-diff=sublime-text-2.desktop
text/x-chdr=sublime-text-2.desktop
text/x-csrc=sublime-text-2.desktop
text/x-c++hdr=sublime-text-2.desktop
text/x-c++src=sublime-text-2.desktop
text/x-dtd=sublime-text-2.desktop
text/x-java=sublime-text-2.desktop
text/x-dsrc=sublime-text-2.desktop
text/x-pascal=sublime-text-2.desktop
text/x-perl=sublime-text-2.desktop
text/x-python=sublime-text-2.desktop
application/x-php=sublime-text-2.desktop
application/x-httpd-php3=sublime-text-2.desktop
application/x-httpd-php4=sublime-text-2.desktop
application/x-httpd-php5=sublime-text-2.desktop
application/xml=sublime-text-2.desktop
application/javascript=sublime-text-2.desktop
application/x-perl=sublime-text-2.desktop
x-directory/normal=sublime-text-2.desktop
inode/directory=sublime-text-2.desktop
END_DEFAULTS

echo "$version was totally installed and configured in your computer."
cat > welcome <<END_WELCOME
THANK YOU FOR USING
  ______  __    __ _______  __       ______ __       __ ________               
 /      \/  |  /  /       \/  |     /      /  \     /  /        |              
/@@@@@@  @@ |  @@ @@@@@@@  @@ |     @@@@@@/@@  \   /@@ @@@@@@@@/               
@@ \__@@/@@ |  @@ @@ |__@@ @@ |       @@ | @@@  \ /@@@ @@ |__                  
@@      \@@ |  @@ @@    @@<@@ |       @@ | @@@@  /@@@@ @@    |                 
 @@@@@@  @@ |  @@ @@@@@@@  @@ |       @@ | @@ @@ @@/@@ @@@@@/                  
/  \__@@ @@ \__@@ @@ |__@@ @@ |_____ _@@ |_@@ |@@@/ @@ @@ |_____               
@@    @@/@@    @@/@@    @@/@@       / @@   @@ | @/  @@ @@       |              
 @@@@@@/  @@@@@@/ @@@@@@@/ @@@@@@@@/@@@@@@/@@/      @@/@@@@@@@@/               
 ______ __    __  ______  ________ ______  __       __       ________ _______  
/      /  \  /  |/      \/        /      \/  |     /  |     /        /       \ 
@@@@@@/@@  \ @@ /@@@@@@  @@@@@@@@/@@@@@@  @@ |     @@ |     @@@@@@@@/@@@@@@@  |
  @@ | @@@  \@@ @@ \__@@/   @@ | @@ |__@@ @@ |     @@ |     @@ |__   @@ |__@@ |
  @@ | @@@@  @@ @@      \   @@ | @@    @@ @@ |     @@ |     @@    |  @@    @@< 
  @@ | @@ @@ @@ |@@@@@@  |  @@ | @@@@@@@@ @@ |     @@ |     @@@@@/   @@@@@@@  |
 _@@ |_@@ |@@@@ /  \__@@ |  @@ | @@ |  @@ @@ |_____@@ |_____@@ |_____@@ |  @@ |
/ @@   @@ | @@@ @@    @@/   @@ | @@ |  @@ @@       @@       @@       @@ |  @@ |
@@@@@@/@@/   @@/ @@@@@@/    @@/  @@/   @@/@@@@@@@@/@@@@@@@@/@@@@@@@@/@@/   @@/ 
                                                                               
                                                                               
AFTER ASCII ART APPRECIATION:
 ____ __   ____  __  ____ ____     
(  _ (  ) (  __)/  \/ ___|  __)_   
 ) __/ (_/\) _)/  o \___ \) _)( )  
(__) \____(____)_/\_(____(____|/   
  ___ __    __  ____ ____          
 / __|  )  /  \/ ___|  __)         
( (__/ (_/(  O )___ \) _)          
 \___)____/\__/(____(____)         
 ____ _  _ ____ __   __ _  _ ____  
/ ___) )( (  _ (  ) (  | \/ |  __) 
\___ ) \/ () _ ( (_/\)(/ \/ \) _)  
(____|____(____|____(__)_)(_(____)  
                                             
                                             
SUBLIME TIPS & TRICKS: http://net.tutsplus.com/tutorials/tools-and-tips/sublime-text-2-tips-and-tricks/
COOL ASCII ART:        http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
STAR OR FORK ME:       https://github.com/waldyr/Sublime-Installer
END_WELCOME
sublime welcome
rm welcome

echo
echo "Would you like a $version better icon [y/n]?"
read img
if [ $img = y -o $img = Y -o $img = yes -o $img = Yes -o $img = YES ] ; then
  echo "Downloading $version custom icon, please wait..."
  wget --no-check-certificate https://raw.github.com/waldyr/Sublime-Installer/master/sublime_text.png -qNO /opt/Sublime\ Text\ 2/Icon/256x256/sublime_text.png
  echo "Custom icon applied with success"
fi

echo
echo "Would you like $version Zen Coding plugin [y/n]?"
read zcplugin
if [ $zcplugin = y -o $zcplugin = Y -o $zcplugin = yes -o $zcplugin = Yes -o $zcplugin = YES ] ; then
  echo "Downloading Zen Coding, please wait..."
  wget --no-check-certificate https://nodeload.github.com/sublimator/ZenCoding/zipball/master -qNP /tmp/
  unzip -q /tmp/master
  sudo cp -aR /tmp/sublimator-ZenCoding* ~/.config/sublime-text-2/Packages/
  rm /tmp/master
  rm -r /tmp/sublimator-ZenCoding*
  echo "Zen Coding applied with success"
fi

echo
echo "$version was totally installed and configured in your computer."
