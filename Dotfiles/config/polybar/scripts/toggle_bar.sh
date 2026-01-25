#!/bin/bash

# Get the PID of Polybar
PID=$(pidof polybar)

if [ -z "$PID" ]; then
    # If Polybar is not running, start it
    polybar dock &
fi
    # If Polybar is running, hide it
    polybar-msg cmd toggle
    xdo raise -N "Polybar" # to raise polybar above other windows
