#!/bin/bash

# Get the PID of Polybar
PID=$(pidof polybar)

if [ -z "$PID" ]; then
    # If Polybar is not running, start it
    polybar dock &
else
    # If Polybar is running, hide it
    polybar-msg -p $PID cmd hide
fi

