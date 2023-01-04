#!/bin/sh

pacstrap /mnt base linux linux-firmware grub efibootmgr xorg-server xorg-apps xorg-xinit nvidia \ 
    man-db base-devel sudo networkmanager xclip xdg-utils git github-cli fzf \
    neovim i3-gaps zsh curl
