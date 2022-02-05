#!/bin/bash

key="sudo apt -y"
inst="${key} install"
rem="${key} remove"

#autoremove removes package dependencies
$key autoremove
#parole is inferior to vlc
$rem --purge parole
#gnu compiler collection
$inst gcc
$inst vlc
#allow make commands
$inst make
#install tree obviously
$inst tree
#remove any netcat files
$rem --purge netcat-openBSD 
#install netcat
$inst netcat
#install curl
$inst curl
#install git
$inst git
#simplenote
wget https://github.com/Automattic/simplenote-electron/releases/download/v2.21.0/Simplenote-linux-2.21.0-amd64.deb
