#!/bin/bash

# terminate any running instances of polybar
killall -q polybar

# wait until the processes have been shutdown
while pgrep -x polybar >/dev/null; do sleep 1; done

# doing a bit of setup to launch polybar on any number of monitors
# basically we pass the bash variable $MONITOR to the polybar bar
# and inside the config file, it sets the monitor using this variable
if type "xrandr" >/dev/null; then
    for m in $(xrandr --query | grep " connected" | awk '{print $1}'); do
        MONITOR=$m polybar --reload -c ~/.config/polybar/config nord-top &
        # MONITOR=$m polybar --reload -c ~/.config/polybar/config nord-down &
    done
else
    polybar --reload -c ~/.config/polybar/config nord-top &
    # polybar --reload -c ~/.config/polybar/config nord-down &
fi

echo "Polybar launched..."
