#!/usr/bin/env bash

# Function to calculate CPU usage
get_cpu_usage() {
 local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%" }')
 echo "$cpu_usage"
}

# Function to calculate memory usage
get_mem_usage() {
 local mem_usage=$(free | awk '/Mem:/ { printf("%.1f%%"), $3/$2 * 100.0 }')
 echo "$mem_usage"
}

# Main loop to update the status bar
while true; do
    # Get the current date and time
    datetime=$(date "+%d %b %I:%M %p")

    # Get the CPU and memory usage
    cpu_usage=$(get_cpu_usage)
    mem_usage=$(get_mem_usage)

    # Concatenate information into a single string
    status="  $mem_usage |  $cpu_usage |  $datetime "

    # Set the root window name with the status information
    xsetroot -name "$status"

    # Refresh every 1 second
    sleep 1
done


##!/usr/bin/env bash

## Function to calculate CPU usage
#get_cpu_usage() {
# local cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%" }')
# echo "$cpu_usage"
#}

## Function to calculate memory usage
#get_mem_usage() {
# local mem_usage=$(free | awk '/Mem:/ { printf("%.1f%%"), $3/$2 * 100.0 }')
# echo "$mem_usage"
#}

## Main loop to update the status bar
#while true; do
#    # Get the current date and time
#    datetime=$(date "+%d %b %I:%M %p")

#    # Get the CPU and memory usage
#    cpu_usage=$(get_cpu_usage)
#    mem_usage=$(get_mem_usage)

#    # Set the root window name with the status information
#    xsetroot -name "  $mem_usage |  $cpu_usage |  $datetime "

#    # Refresh every 1 second
#    sleep 1
#done

