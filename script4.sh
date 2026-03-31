#!/bin/bash

# Script 4: Log File Analyzer
# Author: Shourya

LOGFILE="sample.log"
KEYWORD="error"
COUNT=0

echo "================================"
echo " Log File Analyzer"
echo "================================"

# Check if file exists
if [ ! -f "$LOGFILE" ]
then
    echo "Log file not found. Creating sample log file..."

    echo "This is a normal message" > sample.log
    echo "This is an error message" >> sample.log
    echo "Another line" >> sample.log
    echo "Error occurred again" >> sample.log
fi

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "--------------------------------"
echo "Last matching lines:"

grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "================================"