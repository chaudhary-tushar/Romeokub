#!/bin/bash

cat <<EOF >~/.local/share/applications/Romeokub.desktop
[Desktop Entry]
Version=1.0
Name=Romeokub
Comment=Romeokub Controls
Exec=alacritty --config-file /home/$USER/.config/alacritty/pane.toml --class=Romeokub --title=Romeokub -e Romeokub
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/Romeokub/applications/icons/Romeokub.png
Categories=GTK;
StartupNotify=false
EOF
