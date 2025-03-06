#!/bin/sh
export DISPLAY=:0

status () { 
  BATT=$(
    for battery in /sys/class/power_supply/BAT?*; do
      # If non-first battery, print a space separator.
      [ -n "${capacity+x}" ] && printf " "

      capacity="$(cat "$battery/capacity" 2>&1)"
      if [ "$capacity" -gt 90 ]; then
        baticon=" "
      elif [ "$capacity" -gt 60 ]; then
        baticon=" "
      elif [ "$capacity" -gt 40 ]; then
        baticon=" "
      elif [ "$capacity" -gt 10 ]; then
        baticon=" "
      else
        baticon=" "
      fi

      case "$(cat "$battery/status" 2>&1)" in
        Full) baticon=" " ;;
        Discharging)
          if [ "$capacity" -le 20 ]; then
            baticon="$baticon"
            color=1
          fi
          ;;
        Charging) baticon="󰚥$baticon" ;;
        "Not charging") baticon=" " ;;
        Unknown) baticon="? $baticon" ;;
        *) exit 1 ;;
      esac

      echo $baticon$capacity"%"
    done
  )

  VOL=$( 
    vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o '[0-9]\+%' | head -n1 | sed 's/%//')

    # If Speaker not muted, show volume icon, else show mute icon
    for vol in $vol;
    do
      muteState=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
      case $muteState in
        "no") 
          if [ $vol -ge 80 ]; then
            volicon=' 󰕾 '$vol'%'
          elif [ $vol -ge 50 ]; then
            volicon=' 󰖀 '$vol'%'
          elif [ $vol -ge 10 ]; then
            volicon=' 󰕿 '$vol'%'
          else
            volicon=' 󰝞 '$vol'%'
          fi
          ;;
        "yes")  volicon=' 󰝟 MUTED' ;;
      esac

    # Set Mic icon based on mute state
    case "$(pactl get-source-mute @DEFAULT_SOURCE@ | awk '{print $2}')" in
      no) micicon="";;
      yes) micicon="  " ;;
    esac

    printf "%s%s" "$volicon" "$micicon"
    done
  )


DATE=$(echo " $(date '+%H:%M [%a,%d]')")
  
# INTERNET=$($HOME/.local/bin/statusbar/sbinternet) 
printf " %s | %s | %s \n" "$VOL" "BATT" "DATE"
}

while :; do
  xsetroot -name "$(status)"
done
