#Sublime Installer
###Sublime 2.0.1 setup script for Linux
###Distros supported:
 * Ubuntu

The script will ask if you want a custom icon for your Sublime Text Editor!

###Download
````
wget --no-check-certificate https://raw.github.com/waldyr/Sublime-Installer/master/install_sublime.sh && bash install_sublime.sh
````

###What it gives you:
  * Sublime 2.0.1 Text Editor Installed
  * An Head-Up Display (HUD) icon
  * A terminal shortcut, via symbolic link. You just need to type $ sublime
  * And if you accept, a nice custom sublime icon!

###If you don't wanna use Sublime anymore!
````
To remove, you have to:
  * Change affected lines at ~/.local/share/applications/defaults.list
$ sudo rm /usr/bin/sublime                             # Delete the symbolic link
$ sudo rm ~/.local/share/applications/sublime.desktop  # Delete the desktop file
$ sudo rm /opt/Sublime\ Text\ 2/ -r                    # And finnaly delete sublime folder from your computer
````

###Sublime's custom image
<p align="center">
  <img src="https://github.com/waldyr/Sublime-Installer/blob/master/sublime_text.png?raw=true" alt="Sublime's custom image"/>
</p>