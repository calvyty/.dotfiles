# Options
setopt auto_menu
setopt autocd
setopt complete_in_word
setopt menu_complete

# Enable colors
autoload -U colors && colors
export CLICOLOR=1

# Enable completion
autoload -Uz compinit && compinit
zmodload zsh/complist
_comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '+m:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}' '+m:{_-}={-_}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Enable vi-mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim buffer with ctrl-v
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# Enter vim buffer from normal mode with ctrl-v
autoload -U edit-command-line && zle -N edit-command-line && bindkey -M vicmd "^v" edit-command-line

# Key bindings
bindkey '^?' backward-delete-char
bindkey '^n' history-search-forward
bindkey '^p' history-search-backward
bindkey '^r' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Enable Powerlevel10k prompt theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
