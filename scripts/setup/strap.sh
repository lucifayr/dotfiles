#!/bin/sh

pacstrap /mnt base linux linux-firmware grub efibootmgr xorg-server xorg-apps xorg-xinit xclip nvidia \ 
    man-db sudo networkmanager git github-cli \
    neovim i3-gaps zsh curl
