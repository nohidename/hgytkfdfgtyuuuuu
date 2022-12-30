#!/bin/bash

sudo apt update && sudo apt install gnome-terminal -y

mkdir -p /home/$(whoami)/hgytkfdfgtyuuuuu/Dolphin/Browsers
wget -O /home/$(whoami)/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage https://anty.dolphin.ru.com/download/?platform=linux
OUTPUT=$(whoami)

var="[Desktop Entry]
Type=Application
Terminal=true
Exec=sudo gnome-terminal -e 'sudo bash /home/$(whoami)/hgytkfdfgtyuuuuu/OpenVpn/OpenVpn.sh'
Name=OpenVPN
Icon=/home/${OUTPUT}/hgytkfdfgtyuuuuu/OpenVpn/OpenVPN.png"
echo "$var" > "/home/$(whoami)/Desktop/OpenVPN.Desktop"

var="[Desktop Entry]
Type=Application
Terminal=false
Exec=sudo /home/${OUTPUT}/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage --no-sandbox
Name=Dolphin
Icon=/home/${OUTPUT}/hgytkfdfgtyuuuuu/Dolphin/DolphinLogo.png"
echo "$var" > "/home/$(whoami)/Desktop/Dolphin.Desktop"

sudo chmod ugo+rwx /home/$(whoami)/Desktop/Dolphin.Desktop
sudo chmod ugo+rwx /home/$(whoami)/Desktop/OpenVPN.Desktop
sudo chmod ugo+rwx /home/$(whoami)/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage
sudo chmod ugo+rwx /home/$(whoami)/hgytkfdfgtyuuuuu/OpenVpn/OpenVpn.sh

exit 0
END
