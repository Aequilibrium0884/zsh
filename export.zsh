
# Genaral
export DU_OPTS="-h"
export DF_OPTS="-h"
export RM="trash"
export PAGER="less"
export LESS="-RFX"
export GREP_OPTIONS="--color=auto"
export TERM=xterm-256color
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local"
export XDG_CACHE_HOME="$HOME/.cache"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export MOZ_ENABLE_WAYLAND=1
export MOZ_WEBRENDER=1


if [[ -S "$HOME/.ssh/agent.sock" ]]; then
  :
elif [[ ! -S "$HOME/.ssh/agent.sock" ]]; then
  export ssh_auth_sock="$HOME/.ssh/agent.sock"
else
  :
fi

# Language
export PYTHONSTARTUP="$HOME/.pythonrc"
export ANSIBLE_CONFIG="$HOME/.projects/ansible/ansible.cfg"

# History
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE="$HOME/.config/zsh_history"
export HISTCONTROL=ignoredups:erasedups

# neovim
export EDITOR="nvim"
export VISUAL="nvim"

# Git
export GIT_PAGER="less -FRX"
export GIT_DEFAULT_BRANCH="main"
export GIT_CONFIG_GLOBAL="/opt/$USER/dotfiles/git/gitconfig"

# Postgresql
export PSQLRC="/opt/$USER/dotfiles/psql/psqlrc"
export PGHOST=localhost
export PGUSER=proof
export PGDATABASE=amal


# PATH

bin="/opt/$USER/executables/bin"
export GOPATH="/opt/$USER/go"
path=(
  $HOME/.local/bin
  $HOME/.cargo/env
  $path
  $bin
<<<<<<< HEAD
  $GOPATH/bin
=======
  $GOPATH
  $HOME/go/bin/
  $XDG_DATA_HOME/cargo/bin/
>>>>>>> 482fecd (Fri Feb 20 12:23:31 AM EST 2026)
  )
  typeset -U path
  path=($^path(N-/))
