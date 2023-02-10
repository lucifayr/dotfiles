#!/bin/sh

cd /tmp

git clone https://aur.archlinux.org/yay.git
cd yay
 
makepkg -si

yay -S postman-bin
