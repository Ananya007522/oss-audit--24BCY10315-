#!/bin/bash
# Script 1: System Identity Report
# Author: Shanaajensine | Course: Open Source Software
# Description: Displays system information as a welcome screen

# --- Variables ---
STUDENT_NAME="ananya1009"
SOFTWARE_CHOICE="Git"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')
HOME_DIR=$(echo $HOME)

# --- Display welcome screen ---
echo "================================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "================================================"
echo ""
echo "  Software being audited : $SOFTWARE_CHOICE"
echo "  Linux Distribution     : $DISTRO"
echo "  Kernel Version         : $KERNEL"
echo "  Logged in as           : $USER_NAME"
echo "  Home Directory         : $HOME_DIR"
echo "  System Uptime          : $UPTIME"
echo "  Current Date & Time    : $CURRENT_DATE"
echo ""
echo "------------------------------------------------"
echo "  License covering this OS: GNU GPL v2"
echo "  (Linux kernel is licensed under GPL version 2)"
echo "------------------------------------------------"
echo ""
echo "  Git is licensed under the GNU GPL v2 license."
echo "  This means you are free to use, study, modify,"
echo "  and distribute it — as long as you share your"
echo "  changes under the same license."
echo "================================================"
