#!/bin/sh

cd /tmp

git clone https://aur.archlinux.org/yay.git
cd yay
 
makepkg -si

yay -S nerd-fonts-git postman-bin
