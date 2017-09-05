#! /bin/sh

# vim-plug install for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# link init.vim
mkdir -p ~/.config/nvim
ln -s ~/vimrc/init.vim ~/.config/nvim/init.vim

# PlugInstall
nvim +PlugInstall
