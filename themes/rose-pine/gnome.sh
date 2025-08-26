#!/bin/bash

Romeokub_THEME_COLOR="red"
Romeokub_THEME_BACKGROUND="rose-pine/background.jpg"
source $Romeokub_PATH/themes/set-gnome-theme.sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
