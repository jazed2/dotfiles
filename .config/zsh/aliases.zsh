# ---------------------
# System aliases
# ---------------------

alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias hw='hwinfo --short'                          # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB (expac must be installed)
alias ip='ip -color'

# Help people new to Arch
alias helpme='cht.sh --shell'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"

#
# ---------------------
# Personal
# ---------------------
#

alias grep='rg --color=auto' # New fast grep
alias fgrep='rg -F --color=auto' # String operation
alias egrep='rg -E --color=auto' # Encoding

alias n="nvim $1"
alias vimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.config/zsh/" 

alias poweroff='sudo shutdown -h now' # -h flags halts system, different from normal arch behavior. Required in artix because impatience

alias ls='eza -al --color=always --group-directories-first  $1' # preferred listing
alias la='eza -a --color=always --group-directories-first  $1'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first  $1'  # long format
alias lt='eza -a --tree --color=always --group-directories-first  $1' # tree listing
alias l.='eza -ald --color=always --group-directories-first  .*' # show only dotfiles

alias lf='$HOME/.config/lf/lfub' # Wrapper script for previews using jstkdng/ueberzugpp

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias cat='bat --style header --style snip --style changes --style header' # Nice fomatting with colors
