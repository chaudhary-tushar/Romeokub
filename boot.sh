#!/bin/bash

set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Romeokub is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Romeokub..."
rm -rf ~/.local/share/Romeokub
git clone https://github.com/basecamp/Romeokub.git ~/.local/share/Romeokub >/dev/null
if [[ $Romeokub_REF != "master" ]]; then
	cd ~/.local/share/Romeokub
	git fetch origin "${Romeokub_REF:-stable}" && git checkout "${Romeokub_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/Romeokub/install.sh
