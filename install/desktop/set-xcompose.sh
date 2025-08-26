#!/bin/bash

envsubst < ~/.local/share/Romeokub/configs/xcompose > ~/.XCompose
ibus restart
gsettings set org.gnome.desktop.input-sources xkb-options "['compose:caps']"
