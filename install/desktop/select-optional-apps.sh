#!/bin/bash

if [[ -v Romeokub_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$Romeokub_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for app in $apps; do
			source "$Romeokub_PATH/install/desktop/optional/app-${app,,}.sh"
		done
	fi
fi
