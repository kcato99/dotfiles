#!/bin/bash

DOT_FILES=( zshrc vimrc tmux.conf dir_colors )

for file in ${DOT_FILES[@]}
do
    ln -s ${HOME}/dotfiles/${file} ${HOME}/.${file}
done

# todo: mkdir ~/.config/nvim
# todo: ln -s ${HOME}/dotfiles/init.vim ${HOME}/.config/nvim/init.vim
ln -s ${HOME}/dotfiles/init.vim ${HOME}/init.vim

ln -s ${HOME}/dotfiles/config.fish ${HOME}/.config/fish/config.fish

# for pyenv
ln -s ${HOME}/dotfiles/profile ${HOME}/.profile
