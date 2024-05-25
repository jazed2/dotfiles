alias e="nvim $1"
alias vim="nvim $1"
alias vimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.config/zsh-config/" 

# Replace Eza with ls
alias ls='eza -al --color=always --group-directories-first --icons' # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l.='eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# Lazy aliasing
alias poweroff='sudo shutdown -h now' # -h flags halts system, different from normal arch behavior. Required in artix because impatience

# feh wallpaper swallow
alias feh="/usr/local/bin/devour feh -g 640x480 -d -S filename $1"

# LF aliases 
alias lf='$HOME/.config/lf/lfub'
