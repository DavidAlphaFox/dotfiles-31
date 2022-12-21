#!/bin/bash

interval=0

# load colors
. ~/.config/dwm/gruv

vol() {
  volume="$(pamixer --get-volume)"
  printf "^c$purple^ 墳 "
  printf "^c$purple^$volume"
}

battery() {
  get_capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
  printf "^c$blue^   $get_capacity"
}

#mem() {
#  printf "^c$black^^b$blue^  "
#  printf "^c$white^^b$grey^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
#}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "^c$black^ ^b$green^ 󰤨 ^d^%s" "^c$white^^b$grey^ Connected" ;;
	down) printf "^c$black^ ^b$green^ 󰤭 ^d^%s" "^c$white^^b$grey^ Disconnected" ;;
	esac
}

clock() {
	printf "^c$black^ ^b$blue^ 󱑆 "
	printf "^c$white^^b$grey^ $(date '+%H:%M')  "
}

while true; do

  [ $interval = 0 ] || [ $(($interval % 3600)) = 0 ]
  interval=$((interval + 1))

  sleep 1 && xsetroot -name "$(vol) $(battery) $(wlan) $(clock)  "
done
