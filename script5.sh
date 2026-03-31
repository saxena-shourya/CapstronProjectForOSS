#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Shourya

echo "================================"
echo " Open Source Manifesto Generator"
echo "================================"
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo ""
echo "Generating your manifesto..."
echo ""

# Write to file
echo "On $DATE, I believe that open source is about $FREEDOM." > $OUTPUT
echo "Using tools like $TOOL, we can create powerful solutions." >> $OUTPUT
echo "I would love to build $BUILD and share it with the world." >> $OUTPUT
echo "Open source allows collaboration, innovation, and freedom for everyone." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
echo "--------------------------------"
cat $OUTPUT
echo "================================"