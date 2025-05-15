#!/bin/bash

# Get PID of the currently focused window
PID=$(xdotool getwindowfocus getwindowpid)

# Get working directory of that process
CWD=$(readlink "/proc/$PID/cwd")

# Open new kitty window in the same directory
kitty --directory "$CWD"
