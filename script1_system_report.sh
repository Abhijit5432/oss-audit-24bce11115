#!/bin/bash

# Script 1: System Identity Report
# This script displays basic information about the Linux system

echo "===== Welcome to Your Linux System ====="

# Get Linux distribution name
distro=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# Get kernel version
kernel=$(uname -r)

# Get current user
user=$(whoami)

# Get home directory
home_dir=$HOME

# Get system uptime
uptime_info=$(uptime -p)

# Get current date and time
current_time=$(date)

# Display information
echo "Distribution: $distro"
echo "Kernel Version: $kernel"
echo "User: $user"
echo "Home Directory: $home_dir"
echo "Uptime: $uptime_info"
echo "Current Date & Time: $current_time"

# License message
echo "This system is based on open-source software under the GNU General Public License (GPL)."

echo "========================================"