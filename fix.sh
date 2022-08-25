#!/bin/bash

#? checking permissions
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" | lolcat 1>&2 
   exit 1
fi

sudo systemctl enable bluetooth.service

sudo systemctl restart bluetooth
