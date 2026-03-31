#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shanaajensine | Course: Open Source Software
# Description: Reads a log file line by line, counts keyword matches,
#              and prints a summary with the last 5 matching lines

# --- Accept log file and keyword as command line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error' if none provided

# --- Counter variable to track matches ---
COUNT=0

# --- Check if a log file was provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    echo "Example: ./script4_log_analyzer.sh /var/log/syslog error"
    exit 1
fi

# --- Check if the file actually exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Check if the file is empty, retry once ---
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Waiting 2 seconds and retrying..."
    sleep 2
    if [ ! -s "$LOGFILE" ]; then
        echo "File is still empty. Exiting."
        exit 1
    fi
fi

echo "================================================"
echo "   Log File Analyzer"
echo "================================================"
echo "  Log file : $LOGFILE"
echo "  Keyword  : '$KEYWORD'"
echo "------------------------------------------------"

# --- Read the file line by line using while loop ---
while IFS= read -r LINE; do
    # Check if line contains the keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print the summary ---
echo ""
echo "  Total lines in file  : $(wc -l < $LOGFILE)"
echo "  Keyword matches found: $COUNT"
echo ""

# --- Print last 5 matching lines ---
echo "------------------------------------------------"
echo "  Last 5 lines containing '$KEYWORD':"
echo "------------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "================================================"
