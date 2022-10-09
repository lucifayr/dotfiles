if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m = "DP-0" ]
    then
        MONITOR=$m polybar -c ~/.config/polybar/config.ini &
    else
        MONITOR=$m polybar -c ~/.config/polybar/config-secondary.ini &
    fi 
  done
else
    polybar -c ~/.config/polybar/config.ini &
fi
