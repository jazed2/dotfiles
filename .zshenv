export STATSUBAR=dwmblocks
export EDITOR=nvim
export TERMINAL=alacritty
export PATH=$HOME/.local/bin:$HOME/.local/bin/statusbar:$PATH

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  startx
fi
