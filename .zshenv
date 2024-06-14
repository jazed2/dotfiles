export \
  STATSUBAR=dwmblocks \
  EDITOR=nvim \
  VISUAL=nvim \
  TERMINAL=alacritty \
  PATH=$HOME/.local/bin:$HOME/.local/bin/statusbar:$PATH \
  LC_ALL=en_IN.UTF-8 \
  LANG=en_IN.UTF-8 \
  MANPAGER='nvim +Man!'

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  startx
fi
