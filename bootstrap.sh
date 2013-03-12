#!/bin/bash

dotfiles="$HOME/.dotfiles"

echo "\n### Installing ###"

echo "\n> clone repo\n"
git clone http://github.com/lucapuca/dotfiles.git $dotfiles

echo "> linking dotfiles\n"
ln -s $dotfiles/gitconfig $HOME/.gitconfig

echo "\n### End ###"
