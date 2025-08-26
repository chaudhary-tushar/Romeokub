#!/bin/bash

sudo echo "Running upgrade migration..."

# Add rustc and pgsql client libs
source $Romeokub_PATH/install/terminal/libraries.sh

# Set name and class for desktop files
source $Romeokub_PATH/applications/About.sh
source $Romeokub_PATH/applications/Activity.sh
source $Romeokub_PATH/applications/Basecamp.sh
source $Romeokub_PATH/applications/HEY.sh
source $Romeokub_PATH/applications/Docker.sh
source $Romeokub_PATH/applications/Neovim.sh
source $Romeokub_PATH/applications/Romeokub.sh
source $Romeokub_PATH/applications/WhatsApp.sh
