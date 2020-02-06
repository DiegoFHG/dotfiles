#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITORS_COUNT=$(eval "xrandr -q | grep -o '\bconnected\b' | cut -d ' ' -f1 | wc -l")
MONITORS_NAME_STRING=$(eval "xrandr -q | grep '\bconnected\b' | cut -d ' ' -f1 | awk '{ print$1 }'")
MONITORS_NAME_ARRAY=($(echo "$MONITORS_NAME_STRING" | tr ',' '\n'))

if (( "$MONITORS_COUNT" <= 1 )); then
  MONITOR_0=$MONITORS_NAME

  polybar laptop &
else
  for (( x=0; x<($MONITORS_COUNT); x++ ))
  do
    export "MONITOR_$x"="${MONITORS_NAME_ARRAY[$x]}"
  done

  polybar monitor-0 &
  polybar monitor-1 &
fi

# Launch Polybar, using default config location ~/.config/polybar/config
polybar myBar &
polybar myBar2 &
