# Notifications
dunst &

# Hotkeys and layout
exec /usr/bin/sxhkd &
xmodmap $HOME/.config/.Xmodmap &

# Apps
exec signal-desktop --disable-font-subpixel-positioning --start-in-tray --no-sandbox %U  &
exec /usr/bin/flameshot &
~/.fehbg &

# Runit services
runsvdir $HOME/.config/runit/runsvdir &

# DWM stuff
dwmblocks &
exec dwm
