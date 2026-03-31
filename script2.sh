#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Shourya

PACKAGE="python"

echo "================================"
echo "Checking for $PACKAGE..."
echo "================================"

# Check if command exists
if command -v "$PACKAGE" >/dev/null 2>&1
then
    echo "$PACKAGE is installed."
    python --version
else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------"

# Case statement
case "$PACKAGE" in
    python)
        echo "Python: a powerful open-source programming language"
        ;;
    git)
        echo "Git: version control system used by developers"
        ;;
    vlc)
        echo "VLC: media player that supports multiple formats"
        ;;
    firefox)
        echo "Firefox: open-source web browser"
        ;;
    *)
        echo "Unknown package"
        ;;
esac

echo "================================"