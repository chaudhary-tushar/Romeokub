#!/bin/bash

cp ~/.local/share/Romeokub/configs/alacritty/shared.toml ~/.config/alacritty/shared.toml
cp ~/.local/share/Romeokub/configs/alacritty/pane.toml ~/.config/alacritty/pane.toml
cp ~/.local/share/Romeokub/configs/alacritty/btop.toml ~/.config/alacritty/btop.toml
cp ~/.local/share/Romeokub/configs/alacritty.toml ~/.config/alacritty/alacritty.toml

source $Romeokub_PATH/applications/About.sh
source $Romeokub_PATH/applications/Activity.sh
source $Romeokub_PATH/applications/Neovim.sh
source $Romeokub_PATH/applications/Docker.sh
source $Romeokub_PATH/applications/Romeokub.sh

alacritty migrate 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true
