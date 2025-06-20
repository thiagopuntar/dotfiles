
#!/bin/bash

APP_NAME="spotify"  # Change this to your app name
VOLUME_LEVEL=$1     # Example: 0.25 for 25%, 0.75 for 75%

# Get the sink input ID of the app
SINK_INPUT=$(pactl list sink-inputs | grep -B 10 "spotify")

# SINK_INPUT=$(pactl list sink-inputs | grep -B 10 "$APP_NAME" | grep "Sink Input" | awk '{print $3}' | head -n 1 | tr -d '#')


echo "Sink Input ID: $SINK_INPUT"

if [ -n "$SINK_INPUT" ]; then
  pactl set-sink-input-volume "$SINK_INPUT" "$VOLUME_LEVEL%"
  # pactl set-sink-input-volume "129" 75%
  notify-send "$APP_NAME Volume Set to: $VOLUME_LEVEL%"
else
  notify-send "App $APP_NAME not found"
fi

