set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
Plugin 'gmarik/vundle'

"my Plugin here:
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/syntastic'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'

Plugin 'Shougo/unite.vim'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'sheerun/vim-polyglot'

" Highlight and strip trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
Plugin 'ternjs/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Shougo/denite.nvim'

filetype plugin indent on

set expandtab
set shiftwidth=4
set softtabstop=4
set scrolloff=1
set hidden

set autoindent
syntax on
set number
set ruler
set incsearch
set hlsearch
set mouse=a
set backspace=indent,eol,start
set foldmethod=syntax
set nofoldenable
set lbr
set backupcopy=yes

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

autocmd FileType python setlocal shiftwidth=4 softtabstop=4

let g:user_emmet_leader_key=';'

set encoding=utf-8
" no need to restart vim after saving vimrc to take effect
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ----- Plugin-Specific Settings --------------------------------------

" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
set background=dark

" Uncomment the next line if your terminal is not configured for solarized
let g:solarized_termcolors=256

" Set the colorscheme
colorscheme solarized

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
" nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- vim-jsx settings -----
let g:jsx_ext_required = 0

" ----- tern-vim settings -----
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" ----- Denite map -----
nnoremap <Leader>f :Denite file_rec<CR>
nnoremap <Leader>b :Denite buffer<CR>
let g:globs = ['node_modules/']
" Change ignore_globs
call denite#custom#source(
  \ 'file_rec', 'matchers', ['matcher_fuzzy', 'matcher_ignore_globs'])
  call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
        \ [
        \ '.git/', '.ropeproject/', '__pycache__/',
        \ 'venv/',
        \ 'images/',
        \ '*.min.*',
        \ '*.pyc',
        \ 'dist/',
        \ 'img/', 'fonts/', 'node_modules/'])
