#!/bin/sh
FILES=$(cat $PATH_TO_CONFIG_FILES)
DIRECTORIES=$(cat $PATH_TO_CONFIG_DIRECTORIES)
CURRENT=$(pwd)

cd $PATH_TO_CONFIG 

for file in $FILES
do
   cp $HOME/$file .
done

for directory in $DIRECTORIES
do
    cp -r $HOME/$directory . 
done

UPDATE=$(git diff | wc -l)

if [ $UPDATE -gt 0 ]
then
    git status 
    read -p "Push Changes [y/n]" CONTINUE 
    if [ $CONTINUE = "y" ]
    then 
        read -p "Commit Message: " MESSAGE
        if [ $MESSAGE = "" ]
        then 
            MESSAGE="config files changed"
        fi

        git add . && git commit -m '$MESSAGE' && git push
    fi
fi
