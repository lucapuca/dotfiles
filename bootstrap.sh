#!/bin/bash

dotfiles="$HOME/.dotfiles.lup"
cd $dotfiles

echo "> Installing dotfiles <"

if [ -e $dotfiles ]
then
    git pull origin master
else
    git clone git://github.com/lucapuca/dotfiles.git $dotfiles
fi

ln -sfbT bashrc $HOME/.bashrc
ln -sfbT gitconfig $HOME/.gitconfig
ln -sfbT git-completion.bash $HOME/.git-completion.bash
ln -sfbT git-prompt.sh $HOME/.git-prompt.sh

echo "> End <"
