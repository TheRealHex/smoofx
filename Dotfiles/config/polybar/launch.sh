#!/usr/bin/env bash

# Kill any existing Polybar instances
killall -q polybar

# Sleep for a short duration to let Polybar load properly
sleep 3

# Start Polybar in the background
polybar dock & disown

# Start the autohide command in the background
# autohide & disown
