if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ $m = "DP-0" ] || [ $m = "eDP-1" ]
    then
        MONITOR=$m polybar -c ~/.config/polybar/config.ini &
    elif [ $m = "DP-2" ]
    then 
        MONITOR=$m polybar -c ~/.config/polybar/config-left.ini &
    else  
        MONITOR=$m polybar -c ~/.config/polybar/config-right.ini &
    fi 
  done
else
    polybar -c ~/.config/polybar/config.ini &
fi
