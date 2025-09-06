# ---------------------
# System aliases
# ---------------------

alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias hw='hwinfo --short'                          # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"     # Sort installed packages according to size in MB (expac must be installed)
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias ip='ip -color'

# Get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Help people new to Arch
alias helpme='cht.sh --shell'
alias pacdiff='sudo -H DIFFPROG=meld pacdiff'

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

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

alias h="helix $1"
alias e="helix $1"
alias n="nvim $1"

alias vimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.config/zsh/" 

alias poweroff='sudo shutdown -h now' # -h flags halts system, different from normal arch behavior. Required in artix because impatience

alias ls='eza -al --color=always --group-directories-first  $1' # preferred listing
alias l='eza -a --color=always --group-directories-first  $1'  # all files and dirs
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

# Distrobox aliases for ergonomics
alias hostex='distrobox-host-exec'
alias hostdo='distrobox-host-exec sudo'
alias hostcompose="distrobox-host-exec sudo podman-compose"

# Run with nvidia gpu prefix
alias nvidia_run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only' 
