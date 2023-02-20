#!/bin/sh

pacstrap /mnt base linux linux-firmware grub efibootmgr \ 
    man-db base-devel sudo networkmanager uthash git github-cli fzf \
    neovim zsh curl

echo "Don't forget to install the needed GPU drivers"
