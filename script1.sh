#!/bin/bash

# Script 1: System Identity Report
# Author: Shourya | Course: Open Source Software

echo "================================"
echo " Open Source Audit — Shourya"
echo "================================"

SOFTWARE="Python"

KERNEL=$(uname -r)
USER=$(whoami)
UPTIME="Not available in Git Bash"
DATE=$(date)

echo "Software : $SOFTWARE"
echo "Kernel   : $KERNEL"
echo "User     : $USER"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"

echo "License  : GNU General Public License (Linux OS)"
echo "================================"