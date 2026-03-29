#!/bin/bash

# Script 2: FOSS Package Inspector
# This script checks if a package is installed and displays its details

echo "Enter package name:"
read package

# Check if package is installed (Debian-based system)
if dpkg -l | grep -q "$package"; then
    echo "$package is installed."

    # Show version
    dpkg -l | grep "$package"

    # Describe using case
    case $package in
        git)
            echo "Git is a distributed version control system."
            ;;
        vim)
            echo "Vim is a text editor used for coding."
            ;;
        curl)
            echo "cURL is used for transferring data from servers."
            ;;
        *)
            echo "No description available for this package."
            ;;
    esac
else
    echo "$package is NOT installed."
fi