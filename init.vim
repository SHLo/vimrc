call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --gocode-completer --tern-completer' }
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/denite.nvim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

language en_US
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set laststatus=2


"Plug 'scrooloose/nerdtree'
"set NERDTree window width
let g:NERDTreeWinSize=20
"open a NERDTree automatically
"autocmd vimenter * NERDTree
":NERDTreeToggle => Ctrl-n
map <C-n> :NERDTreeToggle<CR>

"Plug 'altercation/vim-colors-solarized'
set background=dark
" Uncomment the next line if your terminal is not configured for solarized
let g:solarized_termcolors=256
colorscheme solarized

"Plug 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

"Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='base16_solarized'
let g:airline_solarized_bg='dark'
let g:airline_base16_solarized = 1

"Plug 'w0rp/ale'
let g:airline#extensions#ale#enabled = 1 " ale message on airline status bar
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

