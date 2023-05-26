selection=$(echo * | tr " " "\n" | fzf)

if [ -z $selection ]; then
    exit -1
fi

cd $selection
