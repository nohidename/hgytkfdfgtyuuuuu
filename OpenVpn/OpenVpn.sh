#!/bin/bash

read -p "Paste server ip: " openvpn

sudo ufw --force disable
sudo ufw --force reset
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw --force enable
sudo service openvpn stop

sudo apt update
sudo apt install openvpn -y

gnome-terminal -e "sudo scp root@${openvpn}:/root/client.ovpn /etc/openvpn/OpenVPNConfigFile.conf"

PID=$(pidof gnome-terminal-server)
while s=`ps -p $PID -o s=` && [[ "$s" && "$s" != 'Z' ]]; do
    sleep 1
done




sudo echo 'AUTOSTART="all"' > /etc/default/temp_file
sudo cat /etc/default/openvpn >> /etc/default/temp_file
sudo mv /etc/default/temp_file /etc/default/openvpn


OUTPUT=$(sed -n '4p' < /etc/openvpn/OpenVPNConfigFile.conf)
stringarray=($OUTPUT)
Port=${stringarray[2]}

sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out on tun0
sudo ufw allow out to any port $Port
sudo ufw allow out to 10.0.0.0/8
sudo ufw allow out to 172.16.0.0/12
sudo ufw allow out to 192.168.1.0/24
sudo ufw enable

sudo systemctl daemon-reload
sudo service openvpn restart

exit 0
END

