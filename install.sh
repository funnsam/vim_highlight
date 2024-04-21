#!/bin/sh

mkdir -p ~/.vim/syntax
mkdir -p ~/.vim/ftdetect
mkdir -p ~/.vim/indent

cp ./syntax.vim ~/.vim/syntax/krill.vim
cp ./detect.vim ~/.vim/ftdetect/krill.vim
cp ./indent.vim ~/.vim/indent/krill.vim

mkdir -p ~/.config/nvim/syntax
mkdir -p ~/.config/nvim/ftdetect
mkdir -p ~/.config/nvim/indent

cp ./syntax.vim ~/.config/nvim/syntax/krill.vim
cp ./detect.vim ~/.config/nvim/ftdetect/krill.vim
cp ./indent.vim ~/.config/nvim/indent/krill.vim
