#!/bin/bash

key="sudo apt -y"
inst="${key} install"
rem="${key} remove"
sn="sudo snap install"
git="git clone"
pip="pip install"


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
#install net-tools (includes ifconfig)
$inst net-tools
#install redis tools
$inst redis-tools
#smbclient
$inst smbclient
#terminator
$inst terminator
#awscli (Used to interact with Amazon S3)
$inst awscli

#APPLICATIONS

#redshift (blue light remover)
$inst redshift
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

#WORDLISTS

cd /usr/share/wordlists/
#SecList
$git https://github.com/danielmiessler/SecLists.git


cd ~


#ENUMERATION AND VULNERABILITIES

#install nikto - scan webserver for the vulnerability that can be exploited
$inst nikto
#gobuster
$inst gobuster
#wfuzz (wfuzz -c -f text.txt -w subdomains-top1million-5000.txt -u 'http://thetoppers.htb' -H "HOST: FUZZ.thetoppers.htb")
$inst wfuzz
#ffuf
$inst ffuf
#altdns
$git https://github.com/infosec-au/altdns.git
cd altdns
$pip -r requirements.txt
#amass
$git https://github.com/OWASP/Amass.git
#assets-from-spf
$git https://github.com/yamakira/assets-from-spf.git
$pip click ipwhois


#PRIVILEGE AND PERMISSIONS

#linpeas (checks for privilege escalation vulnerabilities)
wget https://github.com/carlospolop/PEASS-ng/releases/download/20220403/linpeas.sh
#polkit
$git https://github.com/Almorabea/Polkit-exploit.git
