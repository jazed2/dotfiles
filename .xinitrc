# Notifications
dunst &

# SXHKD for all shortcuts
exec /usr/bin/sxhkd &

# Apps
exec signal-desktop --disable-font-subpixel-positioning --start-in-tray --no-sandbox %U  &
exec /usr/bin/flameshot &
~/.fehbg &

# Runit services
runsvdir $HOME/.config/runit/runsvdir &

# DWM stuff
dwmblocks &
exec dwm
