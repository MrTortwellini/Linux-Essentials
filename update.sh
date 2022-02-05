#!/bin/bash

key="sudo apt -y"

$key update
$key upgrade
$key install python-pip
$key install python3-pip
