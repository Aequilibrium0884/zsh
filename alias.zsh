
# systemctl 
alias y="yt-dlp"
alias ss="sudo ss -tulpn"
alias sss="sudo systemctl status"
alias ssr="sudo systemctl restart"
alias sse="sudo systemctl enable --now"
alias ssd="sudo systemctl disable"
alias sssp="sudo systemctl stop"
alias ssst="sudo systemctl start"

alias ssdr="sudo systemctl daemon-reload"
alias ssdx="sudo systemctl daemon-reexec"

# Basic Commands
alias sp="sudo cp -r"
alias smv="sudo mv --update=none-fail"
alias smkdir="sudo mkdir -p"
alias stouch="sudo touch"
alias c="clear"
alias mkdir="mkdir -p"
alias cp="cp -r"
alias rm='rm -rf'
#
alias chwn="sudo chown -R $USER:$USER"
alias chmod="sudo chmod -R"
alias chmr="sudo chmod -R +r"
alias chmw="sudo chmod -R +w"
alias chmx="sudo chmod -R +x"
#
alias setfacl="sudo setfacl -R"
alias mount='sudo mount -o rw'
alias cfdisk='sudo cfdisk'
alias ln='sudo ln -s'
alias npm='sudo npm'

# nvim
alias zshrc="cd ~dot && nvim zsh"
alias inlu='nvim ~nvimconf'
alias fstab="sudo nvim /etc/fstab"

# Grep
alias -g G="grep -i"
alias -g GR="grep -iR"
alias -g GV="grep -iv"

# ls -- eza
alias l='eza --tree --level=1 --octal-permissions --long --no-permissions --no-filesize --no-time'
alias la='eza --tree --level=1 --octal-permissions --long --no-permissions --no-filesize --almost-all --no-time'
alias ll='eza --tree --level 1 --long --octal-permissions --no-permissions --total-size --no-time'
alias l.='eza --tree --level 1 --long --octal-permissions --almost-all'
alias las='eza --tree --level 1 --long --octal-permissions --no-permissions --total-size --no-time --no-user'
alias lr='eza --tree --recursive --level=3'


# Movement
alias cdd='cd ../'
alias cddd='cd ../../'
alias cdddd='cd ../../../'
alias cddddd='cd ../../../../'
alias cdddddd='cd ../../../../../'
alias cddddddd='cd ../../../../../../'

# Movement To Hash Dirs
alias opt='cd ~opt'
alias home='cd ~home'
alias dot='cd ~dot'
alias systemd="cd ~systemd"
alias bin="cd ~bin"
alias prj='cd ~projects'
alias gdd='cd ~gdd'
alias secs='cd ~secs'
alias executables="cd ~executables"
alias config='cd ~config'
alias down='cd ~down'
alias ghostty.conf='nvim ~ghosttyd/config'
alias nvim-gh-conf='nvim ~/.config/ghostty/config'
alias hyprconf='nvim ~hyprd/'
alias hyprd='cd ~hyprd'
alias main='cd ~main'
alias nvimconf='cd ~nvimconf'
alias omarchy_bindings='cd ~ombind'
alias wez='cd ~wez'
