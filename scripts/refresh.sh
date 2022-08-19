#!/bin/sh
FILES=$(cat $PATH_TO_CONFIG_FILES)
DIRECTORIES=$(cat $PATH_TO_CONFIG_DIRECTORIES)

for file in $FILES
do
   cp $HOME/$file $PATH_TO_CONFIG 
done

for directory in $DIRECTORIES
do
    cp -r $HOME/$directory $PATH_TO_CONFIG 
done
