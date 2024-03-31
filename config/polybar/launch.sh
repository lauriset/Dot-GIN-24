#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch nakedbar
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Top
polybar first -c ~/.config/polybar/config &
polybar sec -c ~/.config/polybar/config &
polybar third -c ~/.config/polybar/config &
polybar fourth -c ~/.config/polybar/config &
polybar fifth -c ~/.config/polybar/config &
polybar sesta -c ~/.config/polybar/config &
