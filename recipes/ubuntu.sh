script_runner=$(whoami)
sublime_installer_path=$1
log_file=$2

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
