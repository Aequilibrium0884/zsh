# eza long format for directories 

usb() {
  TARGET_DIR="/srv/usb/"
  USB="$(find /dev -type b -regextype posix-extended -regex ".*sd.*[0-9]$" | fzf --prompt "pick your device: ")"
  if [[ -d "$TARGET_DIR" ]]; then
    if [[ -b "$USB" ]]; then
      sudo mount -o rw "$USB" "$TARGET_DIR"
      cd $TARGET_DIR
    fi
  fi
}

pac() {
  for arg in "$@"; do
    if sudo pacman -Si "$arg" &>/dev/null; then
      echo -e "\033[38;5;192mINSTAllING $arg\033[0m"
      sudo pacman -S --noconfirm --needed "$arg" &>/dev/null
    else
      echo "ERROR: $arg"
    fi
  done
}
mv() {
  sudo mv "$1" "$2" && sudo chown -R "$USER:$USER" "$2"
}
