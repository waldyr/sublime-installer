## Sublime Installer
[Versão PT-BT](https://github.com/waldyr/Sublime-Installer/wiki)

Sublime Installer is a simple script for Sublime Text Editor auto setup. It gives you:
  * Sublime 2.0.1 Text Editor
  * Head-Up Display (HUD)
  * Unity Dashboard Icon
  * Terminal Shortcut
  * Sublime's Custom Icon
  * Sublime's Plugin: Package Control
  * Sublime's Plugin: Zen Coding

### Distros supported:
 * Ubuntu 11.10+


## Getting Started

### Usage
Just type the following line on your terminal and let the script do the job for you!
Unless you pass a directory to install sublime, the script will install Sublime at /lib/ directory.
_Problems?! Please take a look at [troubleshooting section](https://github.com/waldyr/Sublime-Installer/edit/master/README.md#troubleshooting)_

````
$ wget --no-check-certificate https://raw.github.com/waldyr/Sublime-Installer/master/install_sublime.sh
$ bash install_sublime.sh /opt/ # If blank then /lib/
#######################################
########## Sublime Installer ##########
#######################################

Downloading Sublime 2.0.1, please wait...
Extracting Sublime 2.0.1, please wait...
Creating Sublime 2.0.1 terminal shortcut
Configuring unity launcher
Configuring preferences
Sublime 2.0.1 was totally installed and configured in your computer.

Would you like a Sublime 2.0.1 better icon [y/n]?
y
Downloading Sublime 2.0.1 custom icon, please wait...
Custom icon applied with success

Would you like Sublime 2.0.1 Package Control [y/n]?
y
Downloading Package Control, please wait...
Package Control applied with success

Would you like Sublime 2.0.1 Zen Coding plugin [y/n]?
y
Downloading Zen Coding, please wait...
Zen Coding applied with success
````


### Uninstalling
If you don't wanna use Sublime anymore there is an uninstall script too!
You just need to pass the Sublime's directory to script, if it isn't in /lib/.

````
$ wget --no-check-certificate https://raw.github.com/waldyr/Sublime-Installer/master/uninstall_sublime.sh
$ bash uninstall_sublime.sh /opt/ # Sublime's folder path
##########################################
########## Sublime Uninstaller ###########
##########################################

Removing Sublime 2.0.1 folder
Removing Sublime 2.0.1 configuration files
Removing Sublime 2.0.1 unity configuration
Removing Sublime 2.0.1 shortcut
Removing defaults.list's affected lines by Sublime 2.0.1

Sublime 2.0.1 was totally removed from your computer!
````

## Troubleshooting

### Not appearing the custom image
Reboot. If persists reboot again. If still persists start an issue [here](https://github.com/waldyr/Sublime-Installer/issues/new)


## Additional Information

### Suggestions or Contributions
You can freely email me, if happened anything unexpected or it works like a charm or also give me suggestions. I'll answer you ASAP with the due respect!
For contributions, I will analyze if your pull request is within the scope and the minimum correctness, furthermore you will be added in the contributors section, that by the way is empty.

### Sublime Package Control
http://wbond.net/sublime_packages/package_control

### Zen Coding
https://github.com/sublimator/ZenCoding
http://www.youtube.com/watch?v=Q_D7X1Y8uOA

### Sublime's custom image
<p align="center">
  <img src="https://github.com/waldyr/Sublime-Installer/blob/master/sublime_text.png?raw=true" alt="Sublime's custom image"/>
</p>
