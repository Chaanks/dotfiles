#!/bin/bash

# set up the two monitors for bspwm
second_monitor=$(xrandr --query | grep 'HDMI-0')
if [[ $second_monitor = *connected* ]]; then
    xrandr --output DP-0 --primary --mode 2560x1440 --rotate normal --output HDMI-0 --mode 2560x1440 --rotate normal --above DP-0
fi