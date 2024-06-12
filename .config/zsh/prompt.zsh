autoload -Uz add-zsh-hook vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '[U]'
zstyle ':vcs_info:*' stagedstr '[S]'
zstyle ':vcs_info:git*' formats "%s (%b) %m%a%u%c "
zstyle ':vcs_info:git*' actionformats "%s (%b) %m%a%u%c "

function preexec() {
  timer=$(date +%s%3N)
}

function precmd() {
  vcs_info 

  if [ $timer ]; then
    local now=$(date +%s%3N)
    local d_ms=$(($now-$timer))
    local d_s=$((d_ms / 1000))
    local ms=$((d_ms % 1000))
    local s=$((d_s % 60))
    local m=$(((d_s / 60) % 60))
    local h=$((d_s / 3600))
    if ((h > 0)); then elapsed=${h}h${m}m
    elif ((m > 0)); then elapsed=${m}m${s}s
    elif ((s >= 10)); then elapsed=${s}.$((ms / 100))s
    elif ((s > 0)); then elapsed=${s}.$((ms / 10))s
    else elapsed=${ms}ms
    fi

    TIME="%F{cyan}took %B%F{yellow}${elapsed} %{$reset_color%}"
    unset timer
  fi

  setopt PROMPT_SUBST
  print -P "
 %B%F{blue}%~%f%b %B%F{magenta}${vcs_info_msg_0_}%f%b "
}

function zle-line-init zle-keymap-select {
case ${KEYMAP} in 
  (vicmd)          PROMPT=" $TIME%B%F{green}%f%b " ;;
  (main|viins)     PROMPT=" $TIME%B%F{green}%f%b " ;;
esac
zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
