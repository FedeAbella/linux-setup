#!/bin/bash

THIS_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
OS_ID=$(grep ^ID= /etc/os-release | cut -d "=" -f2)

# Upgrade system and install packages, depending on distro
if [ -f "$THIS_DIR/packages/$OS_ID.sh" ]; then
	/bin/bash "$THIS_DIR"/packages/"$OS_ID".sh
fi