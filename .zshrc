# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Options
setopt auto_menu
setopt autocd
setopt complete_in_word
setopt extendedglob
setopt menu_complete

# Colors
autoload -U colors && colors
export CLICOLOR=1

# Completion
zmodload zsh/complist
autoload -Uz compinit && compinit
_comp_options+=(globdots)
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '+m:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}' '+m:{_-}={-_}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# vi-mode
bindkey -v
export KEYTIMEOUT=1

# Mode aware cursor
cursor_mode() {
	cursor_block='\e[2 q'
	cursor_beam='\e[5 q'
	function zle-keymap-select {
		if [[ ${KEYMAP} == vicmd ]] ||
			[[ $1 = 'block' ]]; then
			echo -ne $cursor_block
		elif [[ ${KEYMAP} == main ]] ||
			[[ ${KEYMAP} == viins ]] ||
			[[ ${KEYMAP} == '' ]] ||
			[[ $1 = 'beam' ]]; then
			echo -ne $cursor_beam
		fi
	}
	zle -N zle-keymap-select
	zle-line-init() {
		zle -K viins
		echo -ne $cursor_beam
	}
	zle -N zle-line-init
}
cursor_mode

# Edit line in vim buffer with ctrl-v
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# Enter vim buffer from normal mode with ctrl-v
autoload -U edit-command-line && zle -N edit-command-line && bindkey -M vicmd "^v" edit-command-line

# Key bindings
bindkey '^?' backward-delete-char
bindkey '^n' history-search-forward
bindkey '^N' down-line-or-search
bindkey '^p' history-search-backward
bindkey '^P' up-line-or-search
bindkey '^r' history-incremental-search-backward
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias owl="/Applications/OwlOCR.app/Contents/MacOS/OwlOCR --cli"

# Enable Powerlevel10k prompt theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
