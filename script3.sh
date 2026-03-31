#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Shourya

DIRS=("/c" "/c/Users" "/c/Windows" "/tmp")

echo "================================"
echo " Directory Audit Report"
echo "================================"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "--------------------------------"

# Check Python config (simple check)
if [ -d "/c/Users" ]
then
    echo "Python related directory check: /c/Users exists"
else
    echo "Python directory not found"
fi

echo "================================"