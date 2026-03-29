#!/bin/bash

# Script 3: Disk and Permission Auditor
# This script checks disk usage and permissions of directories

directories="/ /home /var /tmp"

echo "===== Disk and Permission Report ====="

for dir in $directories
do
    echo "Directory: $dir"

    # Disk usage
    df -h $dir | tail -1 | awk '{print "Used Space: " $3 " / " $2}'

    # Permissions and owner
    ls -ld $dir | awk '{print "Permissions: " $1 ", Owner: " $3}'

    echo "--------------------------------------"
done