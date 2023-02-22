#!/bin/sh

pacstrap /mnt base linux linux-firmware grub efibootmgr man-db base-devel openssh unzip sudo networkmanager uthash git github-cli fzf neovim ripgrep zsh curl

echo "Don't forget to install the needed GPU drivers"
