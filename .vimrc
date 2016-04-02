set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

"my Plugin here:
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'scrooloose/nerdtree'

filetype plugin indent on

set expandtab
set shiftwidth=4
set softtabstop=4

set autoindent
syntax on
set nu

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

let g:user_emmet_leader_key=';'

set encoding=utf-8
