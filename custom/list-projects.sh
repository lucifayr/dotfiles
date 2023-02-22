#!/bin/sh
projects=$HOME/projects/*
selection=$(echo $projects | tr " " "\n" | fzf)

if [ -z $selection ]; then
    exit -1
fi
    
cd $selection && $SHELL
