zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' user-cache true
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

# History
HISTSIZE=10000
HISTFILE=$HOME/.config/zsh/.zsh_hist
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

bindkey '^j' history-search-forward
bindkey '^k' history-search-backward

#
### SOURCES ###
#

# Keymapping
source $HOME/.config/zsh/keybinds.zsh

# ZSH Plugins (Added as submoudles for easier updating)
source $HOME/.config/zsh/plugins/fzf-tab/fzf-tab.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.config/zsh/pluginsconfig.zsh

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
