# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# Key bindings
bindkey '^?' backward-delete-char
bindkey '^r' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey -M menuselect '^[[Z' reverse-menu-complete

