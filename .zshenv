export \
    STATSUBAR=dwmblocks \
    EDITOR=nvim \
    TERMINAL=alacritty \
    PATH=$HOME/.local/bin:$HOME/.local/bin/statusbar:$PATH \

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  startx
fi
