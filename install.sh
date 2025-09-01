#!/usr/bin/sh

: "${PREFIX:=/usr/local}"

install -Dm644 waybar-dunst.example.jsonc "$PREFIX/share/waybar-dunst/waybar-dunst.example.jsonc"
install -Dm755 waybar-dunst "$PREFIX/lib/waybar-dunst/waybar-dunst"
