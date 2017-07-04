#!/bin/sh
echo "Install vim configurations..."

echo "cd to .vim directory"
cd ~/.vim

echo "backup origin vimrc..."
if [ -f "$HOME/.vimrc" ]; then
        mv ~/.vimrc ~/.vimrc.`date +%Y%m%d`
fi

echo "create new vimrc..."
ln -s ~/.vim/.vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

git submodule init
git submodule update

vi +PluginInstall! +qall
