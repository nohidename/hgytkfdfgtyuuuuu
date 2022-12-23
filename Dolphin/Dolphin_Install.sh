#!/bin/bash

mkdir -p /home/$(whoami)/hgytkfdfgtyuuuuu/Dolphin/Browsers
wget -O /home/$(whoami)/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage https://anty.dolphin.ru.com/download/?platform=linux
OUTPUT=$(whoami)
var="[Desktop Entry]
Type=Application
Terminal=false
Exec=sudo /home/${OUTPUT}/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage --no-sandbox
Name=Dolphin
Icon=/home/${OUTPUT}/hgytkfdfgtyuuuuu/Dolphin/DolphinLogo.png"
echo "$var" > "/home/$(whoami)/Desktop/Dolphin.Desktop"

sudo chmod ugo+rwx /home/$(whoami)/Desktop/Dolphin.Desktop
sudo chmod ugo+rwx /home/$(whoami)/hgytkfdfgtyuuuuu/Dolphin/Browsers/Dolphin.AppImage

exit 0
END
