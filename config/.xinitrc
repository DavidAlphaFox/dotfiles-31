xrdb merge ~/.Xresources 
light -S 50 &
$HOME/.fehbg &
xset r rate 200 50 &
picom &
pipewire &
pipewire-pulse &
mpd &
unclutter-xfixes &

~/.config/dwm/bar.sh &
exec dbus-run-session dwm
