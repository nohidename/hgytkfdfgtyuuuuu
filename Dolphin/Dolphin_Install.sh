#!/bin/bash

mkdir -p ~/Dolphin/Browsers
wget -O ~/Dolphin/Browsers/Dolphin.AppImage https://anty.dolphin.ru.com/download/?platform=linux

var="[Desktop Entry]
Type=Application
Terminal=false
Exec=sudo ~/Dolphin/Browsers/Dolphin.AppImage --no-sandbox
Name=Dolphin
Icon=~/Dolphin/Browsers/DolphinLogo.png"
echo "$var" > "/home/$(whoami)/Desktop/Dolphin.Desktop"

sudo chmod ugo+rwx /home/$(whoami)/Desktop/Dolphin.Desktop
sudo chmod ugo+rwx ~/Dolphin/Browsers/Dolphin.AppImage

exit 0
END
