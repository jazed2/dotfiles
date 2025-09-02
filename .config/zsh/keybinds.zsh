# Opens lf in a tmux split. More info: https://github.com/gokcehan/lf/wiki/Integrations#zsh-file-picker--directory-changer
_zlf() {
    emulate -L zsh
    local d=$(mktemp -d) || return 1
    {
        mkfifo -m 600 $d/fifo || return 1
        tmux split -bf zsh -c "exec {ZLE_FIFO}>$d/fifo; export ZLE_FIFO; exec $HOME/.config/lf/lfub" || return 1
        local fd
        exec {fd}<$d/fifo
        zle -Fw $fd _zlf_handler
    } always {
        rm -rf $d
    }
}
zle -N _zlf 
# bindkey in both vi insert mode and vi command mode
bindkey -M viins '^O' _zlf 
bindkey -M vicmd '^O' _zlf

_zlf_handler() {
    emulate -L zsh
    local line
    if ! read -r line <&$1; then
        zle -F $1
        exec {1}<&-
        return 1
    fi
    eval $line
    zle -R
}
zle -N _zlf_handler

# Lazy git functions because why not?
gam () {
    git add $1
    git commit -m $2
}

# Use lf to switch directories and bind it to ctrl-o
yzcd () {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"/usr/bin/yazi $(pwd)
}
bindkey -s '^o' '^uyzcd\n^M'
