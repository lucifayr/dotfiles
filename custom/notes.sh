#!/bin/sh
notes=$HOME/notes/*
selection=$(echo $notes | tr " " "\n" | fzf)

if [ -z $selection ]; then
    exit -1
fi

note_name=$(basename $selection | sed -E 's/-(\w)/\u\1/g')
nvim -c "Neorg workspace $note_name"
