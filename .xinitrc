# Notifications
dunst &

# Hotkeys and layout
exec /usr/bin/sxhkd &
exec xmodmap $HOME/.config/.Xmodmap &

# Launch apps on startup 
exec $HOME/.local/bin/applauncher &

# Runit services
runsvdir $HOME/.config/runit/runsvdir &

# DWM stuff
dwmblocks &
exec dwm
