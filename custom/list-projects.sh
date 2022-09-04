#!/bin/sh
projects=$HOME/projects/*
config="$HOME/.config/custom $HOME/.config/nvim $HOME/.config/polybar $HOME/.config/i3 $HOME/.config/tmux"
notes="$HOME/my-notes"

selection=$(echo $projects $config $notes | tr " " "\n" | fzf)

if [ -z $selection ] 
then
    exit -1
fi
    
cd $selection 

if [ -z $TMUX ]
then
    tmux
else 
    tmux neww
fi
