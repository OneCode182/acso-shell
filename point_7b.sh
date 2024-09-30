#!/bin/sh
# Script to check for failed root login attempts in NetBSD

# Define the log file for NetBSD
LOG_FILE="/var/log/authlog"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file '$LOG_FILE' not found!"
    exit 1
fi

# Search for failed login attempts for root in the log file
echo "Checking for failed login attempts for user root..."
failed_attempts=$(grep "FAILED LOGIN" "$LOG_FILE" | grep "root")

# Check if there are any failed attempts
if [ -z "$failed_attempts" ]; then
    echo "No failed login attempts for user root found."
    exit 0
fi

# Print each failed attempt with date and time
echo "Failed login attempts for user root:"
grep "FAILED LOGIN" "$LOG_FILE" | grep "root" | awk '{print $1, $2, $3, $NF}'

# Count the total number of failed attempts
total_attempts=$(echo "$failed_attempts" | wc -l)
echo "Total failed login attempts for root: $total_attempts"