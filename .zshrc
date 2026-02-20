PLUGIN_HOME="/opt/$USER/plugins"
ZINIT_HOME="$PLUGIN_HOME/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
if [[ "$USER" == "root" ]]; then
  USER="$(id -nu 1000)"
fi
ZSH_HOME="/opt/$USER/dotfiles/zsh"
source "$ZSH_HOME/alias.zsh" 
source "$ZSH_HOME/export.zsh" 
source "$ZSH_HOME/functions.zsh"
source "$ZSH_HOME/hash.zsh" 
source "$ZSH_HOME/options.zsh" 
source "$ZSH_HOME/system.zsh" 
source "$ZSH_HOME/zinit.zsh" 
clear


