
# systemctl 
alias ss="sudo systemctl"
alias sss="sudo systemctl status"
alias ssr="sudo systemctl restart"
alias sse="sudo systemctl enable --now"
alias ssd="sudo systemctl disable"
alias sssp="sudo systemctl stop"
alias ssst="sudo systemctl start"
alias ssdr="sudo systemctl daemon-reload"

# Basic Commands
alias c="clear"
alias touch="sudo install -D -m 644  -o $USER -g $USER /dev/null"
alias mkdir="sudo install -d -o $USER -g $USER"
alias cp="sudo install -o $USER -g $USER"
alias rm='rm -rf'
#
alias chwn="sudo chown -R $USER:$USER ./*"
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
alias ls='eza --tree --level=1 --octal-permissions --long --no-permissions --no-filesize --no-time'
alias lsa='eza --tree --level=1 --octal-permissions --long --no-permissions --no-filesize --almost-all --no-time'
alias lsl='eza --tree --level 1 --long --octal-permissions --no-permissions --total-size --no-time'
alias ls.='eza --tree --level 1 --long --octal-permissions --almost-all'
alias lss='eza --tree --level 1 --long --octal-permissions --no-permissions --total-size --no-time --no-user'
alias lsr='eza --tree --recursive --level=3'


# Movement
alias ..//='cd ../../'
alias ..///='cd ../../../'
alias ..////='cd ../../../../'
alias ../////='cd ../../../../../'
alias ..//////='cd ../../../../../../'

# Movement To Hash Dirs
alias opt='cd ~opt'
alias home='cd ~home'
alias dot='cd ~dot'
alias systemd="cd ~systemd"
alias bin="cd ~bin"
alias projects='cd ~projects'
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

# pacman
alias pacfiles='pacman -F'
alias pacfileupg='sudo pacman -Fy'
alias pacin='sudo pacman -S --noconfirm --needed'
alias pacins='sudo pacman -U'
alias pacinsd='sudo pacman -S --asdeps'
alias paclean='sudo pacman -Sc'
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
alias paclr='sudo pacman -Scc'
alias pacls='pacman -Ql'
alias paclsorphans='sudo pacman -Qdt'
alias pacman='sudo pacman'
alias pacmanallkeys='sudo pacman-key --refresh-keys'
alias pacmir='sudo pacman -Syy'
alias pacown='pacman -Qo'
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias pacupd='sudo pacman -Sy'
alias pacupg='sudo pacman -Syu'

# yay
alias yaclean='yay -Sc'
alias yaclr='yay -Scc'
alias yaconf='yay -Pg'
alias yain='yay -S'
alias yains='yay -U'
alias yainsd='yay -S --asdeps'
alias yaloc='yay -Qi'
alias yalocs='yay -Qs'
alias yalst='yay -Qe'
alias yamir='yay -Syy'
alias yaorph='yay -Qtd'
alias yare='yay -R'
alias yarem='yay -Rns'
alias yarep='yay -Si'
alias yareps='yay -Ss'
alias yasu='yay -Syu --noconfirm'
alias yaupd='yay -Sy'
alias yaupg='yay -Syu'

