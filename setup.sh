#!/bin/bash

checkt() {
  kind="$(stat -c "%F" "$1" 2>/dev/null)" || kind="null"
  if [[ "$kind" == "null" ]]; then
    kind="$(sudo stat -c "%F" "$1" 2>/dev/null)" || kind="null"
    if [[ "$kind" != "null" ]]; then
      PRESENCE=true
      ACCESSABLE=false
    elif [[ "$kind" == "null" ]]; then
      PRESENCE=false
      ACCESSABLE=false
    fi
  else
    ACCESSABLE=true
    PRESENCE=true
  fi
  case "$kind" in
  "fifo")
    TYPE="fifo"
    ;;
  "symbolic link")
    TYPE="symbolic link"
    ;;
  "socket")
    TYPE="socket"
    ;;
  "directory")
    TYPE="directory"
    ;;
  "regular file")
    TYPE="file"
    SUBTYPE="NON_EMPTY"
    ;;
  "regular empty file")
    TYPE="file"
    SUBTYPE="EMPTY"
    ;;
  "null")
    TYPE="NULL"
    ;;
  "block special file")
    TYPE="block device"
    ;;
  esac
}

permeate() {
  local SUBJECT
  SUBJECT="$1"
  checkt "$SUBJECT"
  if [[ "$PRESENCE" == "true" ]]; then
    PERM="$(sudo stat -c "%a" "$SUBJECT" 2>/dev/null)"
  else
    :
  fi
}

ownership() {
  GID="$(id -g)"
  CRCT_OWNERSHIP="$UID:$GID"
  local SUBJECT
  SUBJECT="$1"
  if [[ -O "$SUBJECT" ]]; then
    :
  else
    sudo chown -R "$USER:$USER" "$1"
  fi
}

file_install() {
  local SUBJECT MAX COUNT
  SUBJECT="$1"
  COUNT=0
  MAX=4
  checkt "$SUBJECT"
  while [[ "$PRESENCE" == false && $COUNT -lt "$MAX" ]]; do 
    sudo install -m 644 -D -o "$UID" -g "$(id -g)" /dev/null "$SUBJECT" 
    ((COUNT++))
    checkt "$SUBJECT"
  done
}
dir_install() {
  local SUBJECT MAX COUNT
  SUBJECT="$1"
  COUNT=0
  MAX=4
  checkt "$SUBJECT"
  while [[ "$PRESENCE" == false && $COUNT -lt "$MAX" ]]; do 
    sudo install -d -o "$UID" -g "$(id -g)" "$SUBJECT"
    ((COUNT++))
    checkt "$SUBJECT"
  done
}

dltn() {
  local SUBJECT MAX COUNT
  SUBJECT="$1"
  COUNT=0
  MAX=4
  checkt "$SUBJECT"
  while [[ "$PRESENCE" == true && $COUNT -lt "$MAX" ]]; do 
    sudo rm -rf "$SUBJECT" 
    ((COUNT++))
    checkt "$SUBJECT"
  done
}

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

ZSHENV_FILE="$HOME/.zshenv"
PLUGIN_HOME="/opt/$USER/plugins"
OPT_HOME="/opt/$USER"

checkt "$ZSHENV_FILE" && [[ "$PRESENCE" == false ]] || dltn "$ZSHENV_FILE" 2>/dev/null

 
checkt "$ZSHENV_FILE" && [[ "$PRESENCE" == true ]] || file_install "$ZSHENV_FILE" 2>/dev/null

echo 'export ZDOTDIR="/opt/$USER/dotfiles/zsh"' >>"$ZSHENV_FILE"

ZINIT_HOME="$PLUGIN_HOME/zinit/zinit.git"

checkt $ZINIT_HOME && [[ "$PRESENCE" == true ]] || dir_install "$(dirname -- $ZINIT_HOME)"
git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

ownership "$OPT_HOME"
exec zsh

