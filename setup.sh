#!/bin/bash

DOT_FILES=(.bashrc .bash_profile .vim .vimrc .tmux.conf 
.bash_logout .xonshrc)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/home/$file $HOME/$file
done
