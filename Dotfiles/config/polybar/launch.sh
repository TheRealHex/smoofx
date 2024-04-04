#!/usr/bin/env bash

# Restart polybar left and right 
killall -q polybar
polybar left 2>&1 | tee -a /tmp/polybar1.log & disown
polybar right 2>&1 | tee -a /tmp/polybar2.log & disown

