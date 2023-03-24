#!/bin/sh

pacstrap /mnt base linux linux-firmware grub efibootmgr ansible man-db base-devel openssh unzip sudo networkmanager networkmanager-openvpn uthash git github-cli fzf neovim zsh curl

echo "Don't forget to install the needed GPU drivers"
