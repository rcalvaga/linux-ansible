#!/bin/bash

# Define the output file
OUTPUT_FILE="/home/azulman/system_checkup_$(date +%Y%m%d_%H%M%S).log"

# Function to check disk usage
check_disk_usage() {
    echo "===== Disk Usage =====" >> $OUTPUT_FILE
    df -h >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE
}

# Function to check memory usage
check_memory_usage() {
    echo "===== Memory Usage =====" >> $OUTPUT_FILE
    free -h >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE
}

# Function to check CPU load
check_cpu_load() {
    echo "===== CPU Load =====" >> $OUTPUT_FILE
    uptime >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE
}

# Function to check running processes
check_running_processes() {
    echo "===== Running Processes =====" >> $OUTPUT_FILE
    ps aux >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE
}

# Function to check network status
check_network_status() {
    echo "===== Network Status =====" >> $OUTPUT_FILE
    ip a >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE
}

# Run all checks
check_disk_usage
check_memory_usage
check_cpu_load
check_running_processes
check_network_status

echo "System checkup complete. Results saved to $OUTPUT_FILE."
