alias tmux="tmux -2"

alias ll="ls -la"
alias weather="curl http://wttr.in/84065"
alias moon="curl wttr.in/Moon"

alias vfzf="vim \$(fzf --height 40% --reverse)"
alias nfzf="nvim \$(fzf --height 40% --reverse)"

alias gprune="git gc --prune=now;git remote prune origin"

# Key repeat fix for OSX
#alias initialkeyrepeat="defaults write -g InitialKeyRepeat -int" # 10" # normal minimum is 15 (225 ms)
#alias keyrepeat="defaults write -g KeyRepeat -int" # 1 # normal minimum is 2 (30 ms)
