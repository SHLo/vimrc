#! /bin/sh
# link .vimrc
ln -s ~/vimrc/.vimrc ~/.vimrc
# Vundle
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
vim +PluginInstall +qall

# YouCompleteMe
sudo apt-get install build-essential cmake python-dev python3-dev -y
cd ~/.vim/bundle/YouCompleteMe
./install.py

# tern_for_vim
cd ~/.vim/bundle/tern_for_vim
sudo apt-get install npm -y
npm install

