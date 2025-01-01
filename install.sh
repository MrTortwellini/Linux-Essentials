#!/bin/bash

#TODO
#ADD A READ OPTION TO GIVE YOUR USERNAME OR JUST USE 'WHOAMI' COMMAND

key="sudo apt -y"
inst="${key} install"
rem="${key} remove"
sn="sudo snap install"
git="git clone"
pip="pip install"


#ESSENTIALS
#install dns utilities
$inst dnsutils
#install locate
$inst plocate
#install netcat
$inst ncat
#install netcat
$inst netcat
#install nmap
$inst nmap
#socat
$inst socat
#install commands (including Strings) from https://www.gnu.org/software/binutils/
$inst binutils
#install python
$inst python-pip
$inst python3-pip
#install beautifulsoup4 (web crawling library for python)
$pip bs4
#requests
$pip requests
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
#install perl
$inst perl
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

#vagrant (https://en.wikipedia.org/wiki/Vagrant_%28software%29)
$inst vagrant
#ansible
$inst ansible
$pip ansible
#ansible patch files
mkdir ansible
cd Downloads/ansible
$git https://github.com/ansible/ansible.git
cd ~
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
#wget https://www.vmware.com/go/getplayer-linux
#VMWare components
#vmware-modconfig --console --install-all
#virtualbox
$inst virtualbox-qt
#qbittorrent
$inst qbittorrent
#vmware2
#wget https://download3.vmware.com/software/WKST-PLAYER-1702/VMware-Player-Full-17.0.2-21581411.x86_64.bundle

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
cd ~
#amass
$git https://github.com/OWASP/Amass.git
#pwnxss (check for xss vulnerabilities)
mkdir pwnxss
cd pwnxss
$git https://github.com/pwn0sec/PwnXSS
cd ~
#dotdotpwn (check for directory traversal vulnerabilities)
mkdir dotdotpwn
cd dotdotpwn
$git https://github.com/wireghoul/dotdotpwn.git
cd ~
#assets-from-spf
$git https://github.com/yamakira/assets-from-spf.git
$pip click ipwhois
#Responder (Package tracker)
$inst responder
#Evil-winrm (Windows Remote Management)
$inst evil-winrm
#John The Ripper (Password breaker and hash resolver)
$inst john

#PRIVILEGE AND PERMISSIONS

#linpeas (checks for privilege escalation vulnerabilities)
wget https://github.com/carlospolop/PEASS-ng/releases/download/20220403/linpeas.sh
#polkit
$git https://github.com/Almorabea/Polkit-exploit.git
