zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall
#

# Vim keybinds
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#
### SOURCES ###
#

# Keymapping
source $HOME/.config/zsh/func.zsh

# ZSH Syntax Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
source $HOME/.config/zsh/aliases.zsh
	
# Zoxide init
source $HOME/.config/zsh/zoxide.zsh

# Garuda Linux Extra
source $HOME/.config/zsh/garudaExtras.zsh

# Prompt
source $HOME/.config/zsh/prompt.zsh

# Replace linux cd with  (z)oxide 
eval "$(zoxide init --cmd cd zsh)"
