#!/usr/bin/env bash

# If /tmp/bar_run exists, load the PID and kill the process
if [ -f /tmp/bar_run ]; then
	kill -9 "$(cat /tmp/bar_run)"
	rm /tmp/bar_run
fi

# Get current PID and save it to /tmp/bar_run
echo $$ > /tmp/bar_run

function clock() {
	echo -n "󰥔 $(date '+%Y-%m-%d %H:%M')"
}

function brightness() {
	if [ ! -d /sys/class/backlight ]; then
		echo -n "error: No backlight found"
		return
	fi

	# get using brightnessctl (need to divide as 25% = 64)
	brightness=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')

	# use truncation to cutoff deicmal instead of rounding
	brightness=${brightness%.*}

	echo -n " $brightness%"
}

function vpn() {
	# check if openvpn is running
	if pgrep -x "openvpn" > /dev/null; then
		echo -n " NL"
	else
		echo -n "󰌿 GB"
	fi
}

# Function to display the CPU load
function cpu() {
	cpu=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print  100 - $1"%"}')

	echo -n " $cpu"
}

# Function to display the RAM usage
function ram() {
	free=$(free -h | grep Mem | awk '{print $3}' | tr -d "Gi")
	total=$(free -h | grep Mem | awk '{print $2}' | tr -d "Gi")

	echo -n " $free/$total GiB"
}

function battery() {
	if [ ! -d /sys/class/power_supply/BAT0 ]; then
		echo "error: No battery found"
		return # No battery found, don't display anything
	fi

	percentage=$(acpi | awk '{print $4}' | tr -d "%,")
	icon=""

	if [ "$percentage" -gt 75 ]; then
		icon=""
	elif [ "$percentage" -gt 50 ]; then
		icon=""
	elif [ "$percentage" -gt 25 ]; then
		icon=""
	else
		icon=""
	fi

	echo -n "$icon  $percentage%"
}

function append_to_output() {
	current="$1"
	to_append="$2"

	# check if `to_append` does to contain the text `error`
	if [[ $to_append == *"error"* ]]; then
		echo "$current"
	else
		echo "$current | $to_append"
	fi
}

while true; do
	# Append the output of the functions to the `output` variable
	output="  $(clock)"
	output=$(append_to_output "$output" "$(brightness)")
	output=$(append_to_output "$output" "$(vpn)")
	output=$(append_to_output "$output" "$(cpu)")
	output=$(append_to_output "$output" "$(ram)")
	output=$(append_to_output "$output" "$(battery)")
	xsetroot -name "$output  "
	sleep 1
done
