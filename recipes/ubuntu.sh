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
  echo -e "!!! You are about to add the following PPA to your system: !!!"
  echo -e "!!! Press [ENTER] to continue or ctrl-c to cancel adding it !!!"
  sudo add-apt-repository ppa:webupd8team/sublime-text-2 >> $log_file 2>&1
  echo -e "==> done..."

  echo -e "\n=> Download packages..."
  sudo apt-get update >> $log_file 2>&1
  echo -e "==> done..."

  echo -e "\n=> Installing Sublime Text Editor..."
  sudo apt-get install sublime-text >> $log_file 2>&1
  echo -e "==> done..."

  echo -e "\n=> Creating symbolic link..."
  sudo ln -s $sublime_installer_path/Sublime\ Text\ 2/sublime_text ./sublime
  echo -e "==> done..."

else

  echo -e "\n\n!!! You must choose between PPA or Portable version !!!"
  exit 1

fi

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
