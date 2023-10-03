#!/bin/bash

this_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

# Copy autostart files
echo ">> Copying autostart files..."

cp -r "$this_dir"/../autostart "$HOME"/.config/