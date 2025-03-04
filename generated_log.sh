#!/bin/bash

# This script provides random log entries I used for testing the log_analyzer.sh script


log_file="generated_log.log"

echo "INFO $(date '+%Y-%m-%d %H:%M:%S') System started." >> $log_file
echo "WARN $(date '+%Y-%m-%d %H:%M:%S') Low disk space." >> $log_file
echo "ERROR $(date '+%Y-%m-%d %H:%M:%S') Failed to connect to the database." >> $log_file
echo "INFO $(date '+%Y-%m-%d %H:%M:%S') User logged in." >> $log_file
echo "ERROR $(date '+%Y-%m-%d %H:%M:%S') Network timeout occurred." >> $log_file
echo "INFO $(date '+%Y-%m-%d %H:%M:%S') Scheduled task completed." >> $log_file
echo "WARN $(date '+%Y-%m-%d %H:%M:%S') High memory usage detected." >> $log_file
echo "INFO $(date '+%Y-%m-%d %H:%M:%S') Backup completed successfully." >> $log_file
echo "ERROR $(date '+%Y-%m-%d %H:%M:%S') Unauthorized access attempt detected." >> $log_file