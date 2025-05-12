#!/bin/bash

# Define paths
path1=gdrive:Resume
path2=/home/vandy/work/data/Resume

# Log file
log_file="/var/log/rclone-bisync.log"

# Run rclone bisync and capture the exit status
rclone bisync --verbose "$path1" "$path2" >> "$log_file" 2>&1
exit_status=$?

# Check if the command failed
if [ $exit_status -ne 0 ]; then
    echo "ERROR: rclone bisync failed with exit status $exit_status. Check the log file for details: $log_file" >&2
    # Optionally, print the last few lines of the log file to stdout for immediate debugging
    echo "Last 10 lines of the log file:"
    tail -n 10 "$log_file"
fi

# Exit with the same status as the rclone command
exit $exit_status