#!/bin/bash

test -e ~/.vim/bundle/Vundle.vim || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +BundleInstall +qall < /dev/tty # < /dev/tty tells vim input is from terminal

