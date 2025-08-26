#!/bin/bash

CHOICES=(
  "Cursor            AI Code Editor"
  "Doom Emacs        Emacs framework with curated list of packages"
  "RubyMine          IntelliJ's commercial Ruby editor"
  "Windsurf          Another AI Code Editor"
  "Zed               Fast all-purpose editor"
  "<< Back           "
)

CHOICE=$(gum choose "${CHOICES[@]}" --height 8 --header "Install editor")

if [[ "$CHOICE" == "<< Back"* ]] || [[ -z "$CHOICE" ]]; then
  # Don't install anything
  echo ""
else
  INSTALLER=$(echo "$CHOICE" | awk -F ' {2,}' '{print $1}' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
  INSTALLER_FILE="$Romeokub_PATH/install/desktop/optional/app-$INSTALLER.sh"

  source $INSTALLER_FILE && gum spin --spinner globe --title "Install completed!" -- sleep 3
fi

clear
source $Romeokub_PATH/bin/Romeokub-sub/header.sh
source $Romeokub_PATH/bin/Romeokub-sub/install.sh
