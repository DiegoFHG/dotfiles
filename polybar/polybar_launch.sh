#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITORS_COUNT=$(eval "xrandr -q | grep -o '\bconnected\b' | cut -d ' ' -f1 | wc -l")
MONITORS_NAME=($(eval "xrandr --query | grep '\bconnected\b' | cut -d ' ' -f1 | awk '{ print$1 }'"))

if (( "$MONITORS_COUNT" <= 1 )); then
  MONITOR_0=$MONITORS_NAME
else
  for monitor in $(seq 0 "$(($MONITORS_COUNT-1))")
  do
    export "MONITOR_$monitor=$MONITORS_NAME[$monitor]"
  done
fi

# Launch Polybar, using default config location ~/.config/polybar/config
polybar myBar &
