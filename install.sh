#!/usr/bin/sh

: "${PREFIX:=/usr/local}"

install -Dm755 waybar-dunst "$PREFIX/lib/waybar-dunst/waybar-dunst"
install -Dm644 module.json "$PREFIX/share/waybar-dunst/module.json"
