#!/bin/sh

echo "remember to uncomment the wheel group in /etc/sudoers!"

useradd -m -G wheel -s /bin/zsh jackboxx 
passwd jackboxx
