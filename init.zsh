ZSH_HOME="/opt/$USER/dotfiles/zsh"
PLUGIN_HOME="/opt/$USER/plugins/"


source "$ZSH_HOME/export.zsh" 
source "$ZSH_HOME/functions.zsh"
source "$ZSH_HOME/hash.zsh" 
source "$ZSH_HOME/options.zsh" 
source "$ZSH_HOME/system.zsh" 
source "$ZSH_HOME/zinit.zsh" 


source /home/aware/.local/share/plugins/zsh-autopair/autopair.zsh
source /home/aware/.local/share/plugins/fzf-tab/fzf-tab.plugin.zsh
source "$PLUGIN_HOME/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source /home/aware/.local/share/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

source "$ZSH_HOME/alias.zsh" 

clear
