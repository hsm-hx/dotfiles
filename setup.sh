#!/bin/zsh

DOT_FILES=(.zshrc .hyper.js .vimrc)

for file in ${DOT_FILES[@]}
do
	ln -s $HOME/dotfiles/$file $HOME/$file
done
