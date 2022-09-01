#!/bin/sh
projects=~/projects/*

selection=$(echo $projects | tr " " "\n" | fzf)

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
