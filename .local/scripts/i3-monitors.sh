#!/bin/bash

# Get the current connected outputs
MAIN_MONITOR="eDP-1"  
SECONDARY_MONITOR="HDMI-1-0" 

# Check if the secondary monitor is still connected
if ! xrandr | grep "$SECONDARY_MONITOR connected"; then
    # Move all workspaces from the secondary monitor to the main monitor
    i3-msg -t get_workspaces | jq -r '.[] | select(.output=="'"$SECONDARY_MONITOR"'") | .name' | while read -r workspace; do
        i3-msg workspace "$workspace"
        i3-msg move workspace to output "$MAIN_MONITOR"
    done
fi
