#!/bin/bash

dotfiles="$HOME/.dotfiles.lup"
cd $dotfiles

if [ -e $dotfiles ]
then
    git pull origin master
else
    git clone git://github.com/lucapuca/dotfiles.git $dotfiles
fi

ln -svfbT bashrc $HOME/.bashrc
ln -svfbT gitconfig $HOME/.gitconfig
ln -svfbT git-completion.bash $HOME/.git-completion.bash
ln -svfbT git-prompt.sh $HOME/.git-prompt.sh
