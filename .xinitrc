# Notifications
dunst &

# SXHKD for all shortcuts
exec /usr/bin/sxhkd &

# Apps
exec syncthing --no-browser &
exec signal-desktop --start-in-tray --no-sandbox %U  &
exec /usr/bin/flameshot &
~/.fehbg &

# DWM stuff
dwmblocks &
exec dwm
