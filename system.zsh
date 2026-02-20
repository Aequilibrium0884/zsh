bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
bindkey -r '^p'
bindkey -r '^n'
