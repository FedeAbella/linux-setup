#!/bin/bash

this_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
os_id=$(grep ^ID= /etc/os-release | cut -d "=" -f2)

# Upgrade system and install packages, depending on distro
if [ -f "$this_dir/packages/$os_id.sh" ]; then
    /bin/bash "$this_dir"/packages/"$os_id".sh
fi