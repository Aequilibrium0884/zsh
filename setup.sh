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
  local SUBJECT
  SUBJECT="$1"
  sudo install -m 644 -D -o "$UID" -g "$(id -g)" /dev/null "$SUBJECT" 
}


export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

ZSH_FILE="$HOME/.zshrc"

checkt "$ZSH_FILE" 
[[ "$PRESENCE" == true ]] && sudo rm -rf "$ZSH_FILE" && checkt "$ZSH_FILE"

file_install 
