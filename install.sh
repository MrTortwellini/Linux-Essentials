#!/bin/bash

key="sudo apt -y"
inst="${key} install"
rem="${key} remove"
sn="sudo snap install"


#ESSENTIALS

#allow make commands
$inst make
#install tree obviously
$inst tree
#autoremove removes package dependencies
$key autoremove
#parole is inferior to vlc
$rem --purge parole
#remove any netcat files
$rem --purge netcat-openBSD 
#install netcat
$inst netcat
#install nmap
$inst nmap
#install curl
$inst curl
#install openvpn
$inst openvpn
#install git
$inst git
#gnu compiler collection
$inst gcc
#smbclient
$inst smbclient
#terminator
$inst terminator
#linpeas
wget https://github.com/carlospolop/PEASS-ng/releases/download/20220403/linpeas.sh
#polkit
wget https://github.com/Almorabea/Polkit-exploit/archive/refs/heads/main.zip

#APPLICATIONS

#vlc media player
$inst vlc
#simplenote
#wget https://github.com/Automattic/simplenote-electron/releases/download/v2.21.0/Simplenote-linux-2.21.0-amd64.deb
$sn simplenote
#discord
$sn discord
#VMWare
wget https://www.vmware.com/go/getplayer-linux
#VMWare components
vmware-modconfig --console --install-all
#qbittorrent
$inst qbittorrent

