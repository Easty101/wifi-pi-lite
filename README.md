![image](https://github.com/Easty101/captive-pi-lite/assets/106346360/79bc15ac-eee2-4b3b-8e2f-666162c844ff)
# Wifiphisher-Pi-lite
Wifi captive portal, made to auto-run on Rasbian Lite

A simple script to automticly install Wifiphisher and its dependencies on Rasbian Lite and make it run automaticly <br>
 _(tested on rasberry pi 3a)_ <br>
(Note: This will use the interface **wlan1**, so a wifi adapter is needed)
 
<br>

Original Wifiphisher tool can be found at: https://github.com/wifiphisher/wifiphisher

Credit for the tool obviously also goes to @https://github.com/tur11ng

<br>

#### This was made for RaspberryPi OS Lite on the Pi 3 and may not work on other Pi OS versions/distros 

####
## Requirements <br>
- **A new & clean installation of rasbian lite (raspberrypi os lite), corresponding to your type of Raspberry Pi**
- **The password for sudo**
- **External usb wifi adapter**
- **Minimum 8GB micro sd card**

# Installation <br>

1. Install git:
```
sudo apt-get install git -y
```

2. Paste this command in terminal:
```
git clone https://github.com/Easty101/wifi-pi-lite.git
```

3. Change to the new directory:
```
cd wifi-pi-lite
```

4. Run this command to execute the bash file.
```
sudo bash wifi-pi.sh
```
This might take a while.

<br> 5. Now on reboot your RaspberryPi should spawn a phishing Wifi hotspot. <br>
You should also have auto-login enabled, though it might work without auto-login.

# Important!
### Only use/test this on your own devices! Doing otherwise is illegal!

<br> <br>
# 
If you have any feedback, please let me know :D
