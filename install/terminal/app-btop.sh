#!/bin/bash

# This script installs btop, a resource monitor that shows usage and stats for processor, memory, disks, network and processes.
sudo apt install -y btop

# Use Romeokub btop config
mkdir -p ~/.config/btop/themes
cp ~/.local/share/Romeokub/configs/btop.conf ~/.config/btop/btop.conf
cp ~/.local/share/Romeokub/themes/tokyo-night/btop.theme ~/.config/btop/themes/tokyo-night.theme

