#! /bin/sh

xinput set-prop "UNIW0001:00 093A:0255 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "UNIW0001:00 093A:0255 Touchpad" "libinput Natural Scrolling Enabled" 1

# Setup external monitors
xrandr --output DP-1-0 --auto --right-of eDP-1



