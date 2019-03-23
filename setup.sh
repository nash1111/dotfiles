#!/bin/bash

DOT_FILES=(.bashrc .bash_profile .vimrc .vimrc.dein .tmux.conf .bash_logout)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/home/$file $HOME/$file
done
