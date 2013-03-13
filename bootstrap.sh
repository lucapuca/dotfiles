#!/bin/bash

function safeLink {
    dotfiles="$HOME/.dotfiles.lup"
    fileName=$1
    target=$dotfiles/$fileName
    linkName=$HOME/.$fileName
    backup="/tmp/$fileName.`date +%F.%k%M%S`"

    echo ">> linking $fileName to $linkName"
    if [ -e "$linkName" ]
    then
        echo ">>> Moving old $linkName to $backup"
        mv $linkName $backup
    fi
    ln -s $target $linkName
    echo ""
}

dotfiles="$HOME/.dotfiles.lup"

echo "> Installing dotfiles <"

echo ">> clone repo"
if [ -e $dotfiles ]
then
    git pull origin master
else
    git clone http://github.com/lucapuca/dotfiles.git $dotfiles
fi

safeLink "gitconfig"
safeLink "git-completion.bash"
safeLink "git-prompt.sh"

echo "### End ###"
