#!/bin/bash

dotfiles="$HOME/.dotfiles.lup"

echo "\n### Installing ###"

echo "\n> clone repo\n"
if [ -e $dotfiles ]
then
    git pull origin master
else
    git clone http://github.com/lucapuca/dotfiles.git $dotfiles
fi

echo "> linking dotfiles\n"
if [ -e $HOME/.gitconfig ]
then
    mv $HOME/.gitconfig $HOME/.gitconfig.`date +%F.%k%M%S`
fi
ln -s $dotfiles/gitconfig $HOME/.gitconfig

echo "\n### End ###"
