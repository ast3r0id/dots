#Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar top -c ~/.config/polybar/config.ini 

#for i in $(polybar -m | awk -F: '{print $1}'); do MONITOR=$i polybar top -c
    ~/.config/polybar/config.ini

echo "Bars launched..."
