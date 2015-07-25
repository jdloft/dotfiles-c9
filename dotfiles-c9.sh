#!/bin/sh
# Downloads files for C9

# Vim
echo "Creating .vim/autoload dir..."
mkdir -p ~/.vim/autoload
echo "Downloading plug.vim..."
wget https://github.com/jdloft/dotfiles/raw/master/link/.vim/autoload/plug.vim -O ~/.vim/autoload/plug.vim > /dev/null 2>&1
echo "Downloading .vimrc..."
wget https://github.com/jdloft/dotfiles/raw/master/link/.vimrc -O ~/.vimrc > /dev/null 2>&1
echo "vim-plug stuff..."
vim +PlugClean +PlugInstall +PlugUpdate +qall now

# Git
echo "Downloading .gitconfig..."
wget https://raw.githubusercontent.com/jdloft/dotfiles/master/copy/.gitconfig -O ~/.gitconfig > /dev/null 2>&1

# Aliases
echo "Removing old aliases..."
rm ~/.bash_aliases
echo "Downloading new aliases..."
wget https://raw.githubusercontent.com/jdloft/dotfiles/master/source/50_aliases.sh -O ~/.bash_aliases > /dev/null 2>&1

echo "Done!"
