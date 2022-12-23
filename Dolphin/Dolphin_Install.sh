#!/bin/bash

mkdir -p ~/hgytkfdfgtyuuuuu/Dolphin/Browsers
wget -O ~/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage https://anty.dolphin.ru.com/download/?platform=linux

var="[Desktop Entry]
Type=Application
Terminal=false
Exec=sudo ~/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage --no-sandbox
Name=Dolphin
Icon=~/hgytkfdfgtyuuuuu/Dolphin/Browsers/DolphinLogo.png"
echo "$var" > "/home/$(whoami)/Desktop/Dolphin.Desktop"

sudo chmod ugo+rwx /home/$(whoami)/Desktop/Dolphin.Desktop
sudo chmod ugo+rwx ~/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage

exit 0
END
