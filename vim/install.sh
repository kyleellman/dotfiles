#!/bin/bash

test -e ~/.vim/bundle/Vundle.vim || git clone https://github.com/VundleVim/Vundle.vim.git

vim +BundleInstall +qall

