#!/bin/bash

dotfiles="$HOME/.dotfiles.lup"
cd $dotfiles

if [ -e $dotfiles ]
then
    git pull origin master
else
    git clone git://github.com/lucapuca/dotfiles.git $dotfiles
fi

ln -svfbT $dotfiles/bashrc $HOME/.bashrc
ln -svfbT $dotfiles/gitconfig $HOME/.gitconfig
ln -svfbT $dotfiles/git-completion.bash $HOME/.git-completion.bash
ln -svfbT $dotfiles/git-prompt.sh $HOME/.git-prompt.sh

#curl https://raw.github.com/gcapizzi/vimpeppers/master/bootstrap.sh -L -o - | sh
