# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR=vim
export VISUAL=$EDITOR

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases

# VI editing mode
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Fix the esc key lag
export KEYTIMEOUT=1

alias ll="ls -la"
alias weather="curl http://wttr.in/84065"
alias moon="curl wttr.in/Moon"

alias pa="php artisan"

alias vfzf="vim \$(fzf --height 40% --reverse)"
alias nfzf="nvim \$(fzf --height 40% --reverse)"

alias initialkeyrepeat="defaults write -g InitialKeyRepeat -int" # 10" # normal minimum is 15 (225 ms)
alias keyrepeat="defaults write -g KeyRepeat -int" # 1 # normal minimum is 2 (30 ms)
