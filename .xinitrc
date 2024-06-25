# Launch apps on startup 
exec $HOME/.local/bin/applauncher &

# Notifications
dunst &

# Hotkeys and layout
exec /usr/bin/sxhkd &
exec xmodmap $HOME/.config/.Xmodmap &

# Runit services
runsvdir $HOME/.config/runit/runsvdir &

# DWM stuff
dwmblocks &
exec dwm
