#!/bin/sh

sudo pacman -Sy alacritty bashtop tmux firefox discord flameshot

cd /tmp && git clone https://github.com/pijulius/picom/ && cd picom && git submodule update --init --recursive && meson --buildtype=release . build && sudo ninja -C build install
