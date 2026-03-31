#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: ananya1009 | Course: Open Source Software
# Description: Checks if Git is installed, shows its details,
#              and prints a philosophy note using a case statement

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if the package is installed using dpkg ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "================================================"
    echo "  Package '$PACKAGE' is INSTALLED on this system"
    echo "================================================"
    echo ""
    # --- Show version, license and description ---
    dpkg -s $PACKAGE | grep -E 'Package|Version|Maintainer|Description'
else
    # --- If not installed, show a message ---
    echo "Package '$PACKAGE' is NOT installed."
    echo "Install it with: sudo apt install $PACKAGE"
fi

echo ""
echo "------------------------------------------------"
echo "  Open Source Philosophy Note:"
echo "------------------------------------------------"

# --- Case statement: print philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "  Git: Born out of frustration with proprietary tools."
        echo "  Linus Torvalds built Git in 2005 when BitKeeper"
        echo "  revoked free access to the Linux kernel team."
        echo "  Git is now the backbone of all modern software development."
        ;;
    httpd|apache2)
        echo "  Apache: The web server that built the open internet."
        ;;
    mysql)
        echo "  MySQL: Open source at the heart of millions of apps."
        ;;
    firefox)
        echo "  Firefox: A nonprofit fighting for an open web."
        ;;
    vlc)
        echo "  VLC: Built by students — plays anything, free forever."
        ;;
    *)
        echo "  This is a free and open source software package."
        ;;
esac

echo "================================================"
