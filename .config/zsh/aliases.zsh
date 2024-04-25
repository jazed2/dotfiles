alias e="nvim $1"
alias vim="nvim $1"
alias vimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.config/zsh-config/" 

# Replace Exa with ls
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# Lazy aliasing
alias poweroff='sudo shutdown -h now' # -h flags halts system, different from normal arch behavior. Required in artix because impatience

# feh wallpaper swallow
alias fh="/usr/local/bin/devour feh -g 640x480 -d -S filename $1"

