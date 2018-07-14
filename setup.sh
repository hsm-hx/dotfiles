#!/bin/zsh

DOT_FILES=(.zshrc .zshenv .hyper.js .vimrc)

for file in ${DOT_FILES[@]}
do
	ln -s $HOME/dotfiles/$file $HOME/$file
done
