#!/bin/bash

# DOT_FILES=( .zsh .zshrc .zshrc.custom .zshrc.alias .zshrc.linux .zshrc.osx .ctags .emacs.el .gdbinit .gemrc .gitconfig .gitignore .inputrc .irbrc .sbtconfig .screenrc .vimrc .vim .vrapperrc import.scala .tmux.conf .dir_colors .rdebugrc .pryrc .tmux.conf .tigrc)

DOT_FILES=( .zshrc .vim .vimrc .gitconfig .jshintrc .xvimrc .tmux.conf .tigrc)
for file in ${DOT_FILES[@]}
do
  if [ -e $HOME/$file ]; then
    rm $HOME/$file
  fi
  ln -s $HOME/dotfiles/$file $HOME/$file
done

# install oh-my-zsh
#[! -d ~/.oh-my-zsh ] && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

