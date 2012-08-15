#!/bin/sh

############################################################
# Sublime Text 2.0.1 Installer                             #
# Author:  Waldyr G. Araújo de Souza <waldyr.ar@gmail.com> #
# Licence: MIT                                             #
############################################################

version="Sublime 2.0.1"

cd /tmp

# Check wether 64 or 32 bit kernel and download the correct version;
if [ %PROCESSOR_ARCHITECTURE%==x86 ] ; then # 32
  wget -NP /tmp/ http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.tar.bz2
else # 64
  wget -NP /tmp/ http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2
fi

# Extract the tar.bz2 and make linked symbol;
tar vxjf /tmp/Sublime*.tar.bz2
sudo cp -aR /tmp/Sublime\ Text\ 2 /opt/

echo "Would you like another $version icon [y/n]?"
read ans
if [ $ans = y -o $ans = Y -o $ans = yes -o $ans = Yes -o $ans = YES ] ; then
  wget http://4.bp.blogspot.com/-tMdQLSAZukI/Tw7n9v9ZRZI/AAAAAAAAHX0/Ek9-ijCj7ws/s400/sublime.png -q -O /opt/Sublime\ Text\ 2/Icon/256x256/sublime_text.png
fi

rm -r /tmp/Sublime\ Text\ 2*
sudo ln -sf /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime

# Configuring unity launcher
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
